class ChangeColName < ActiveRecord::Migration[5.1]
  def change
    change_table :orders do |t|
      t.rename :shipping_address_id, :address_id
      t.rename :shipping_service_id, :service_id
      t.rename :msgName, :mfgName
    end
  end
end
