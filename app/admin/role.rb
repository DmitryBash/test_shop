ActiveAdmin.register Role do
  permit_params :name, role_setting_ids: []

  index do
    selectable_column
    id_column
    column :name
    actions
  end

  form do |f|
    f.inputs "Role" do
      f.input :name
      f.input :role_settings
    end
    f.actions
  end

end
