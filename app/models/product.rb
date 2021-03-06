class Product < ApplicationRecord
  include Redis::Objects
  include Likable

  has_attached_file :picture
  validates_attachment_content_type :picture, content_type: /\Aimage\/.*\z/


  serialize :like, Array

  counter :view

  has_many :comments, dependent: :destroy
  has_many :commented_users, through: :comments,
           source: :user
  has_many :uniq_commented_users, -> { uniq },
           through: :comments,
           source: :user

  has_many :images, as: :imagable, inverse_of: :imagable

  accepts_nested_attributes_for :images, allow_destroy: true

  validates :price, :name, presence: true
  validates_uniqueness_of :name
end
