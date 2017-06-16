class Image < ApplicationRecord
  belongs_to :imagable, polymorphic: true, inverse_of: :imagable
  mount_uploader :file, ImageUploader

  # has_attached_file :image
  # validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
end
