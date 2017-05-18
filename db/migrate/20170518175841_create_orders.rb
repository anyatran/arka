class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.integer :quantity
      t.references :user, foreign_key: true
      t.references :shipping_address, foreign_key: true
      t.decimal :unit_price, precision: 8, scale: 2
      t.decimal :subtotal, precision: 15, scale: 2
      t.references :shipping_service, foreign_key: true
      t.decimal :total, precision: 15, scale: 2
      t.decimal :tax, precision: 8, scale: 2
      t.string :status
      t.string :msgName

      t.timestamps
    end
  end
end
