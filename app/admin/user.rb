ActiveAdmin.register User do

  index do
    selectable_column
    id_column
    column :email
    column :current_sign_in_at
    column :role

    column :created_at
  end

  filter :email
  filter :current_sign_in_at
  filter :role
  filter :created_at
end
