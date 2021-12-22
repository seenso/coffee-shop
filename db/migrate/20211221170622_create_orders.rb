class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.float :price
      t.references :coffee
      t.references :customer
    end
  end
end
