ActiveAdmin.register RoleSetting do

  index do
    selectable_column
    id_column
    column :name
    column :description
  end

end
