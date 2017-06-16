class ProductPolicy < ApplicationPolicy

  def create?
    user && user.role_settings.include?(RoleSetting.create_product)
  end

  def destroy?
    user && user.role_settings.include?(RoleSetting.rm_product)
  end

  def show?
    user && user.role_settings.include?(RoleSetting.show_product)
  end

  def search?
    user && user.role_settings.include?(RoleSetting.search_product)
  end
end
