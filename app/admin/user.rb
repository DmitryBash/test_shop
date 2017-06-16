ActiveAdmin.register User do
  permit_params :role_id

  index do
    selectable_column
    id_column
    column :first_name
    column :last_name
    column :role
    column :updated_at
    column :created_at
    actions
  end

  form do |f|
    f.inputs 'User' do
      f.input :first_name
      f.input :last_name
      f.input :role
    end
    f.actions
  end

end
