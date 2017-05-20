ActiveAdmin.register Order do
  permit_params :status, :mfgName
  actions :all, :except => [:destroy]

  scope :all, :default => true
  scope :processed
  scope :placed
  scope :cancelled

  index do
    selectable_column
    id_column
    column :quantity
    column :user
    column :address
    column :unit_price
    column :subtotal
    column :service
    column :total
    column :tax
    column :status
    column :created_at
    column 'Manufacturer', :mfgName
    actions
  end

  form do |f|
    f.inputs 'Order Details' do
      f.input :status, as: :select, :selected => Order.find(params[:id]).status, :collection => ['processed', 'order-placed', 'cancelled'], include_blank: false
      f.input :mfgName, :label => 'Manufacturer'
    end
    f.actions
  end

  filter :status
  filter :created_at
  filter :service
  filter :user

end
