class RoleSetting < ApplicationRecord
  has_and_belongs_to_many :roles

  class << self
    def create_product
      find_by(name: 'create_product')
    end

    def rm_product
      find_by(name: 'rm_product')
    end

    def show_product
      find_by(name: 'show_product')
    end

    def search_product
      find_by(name: 'search_product')
    end

    def send_broadcast
      find_by(name: 'send_broadcast')
    end

  end
end
