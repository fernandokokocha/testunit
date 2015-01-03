class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :quantity
      t.boolean :paid
      t.boolean :sent
      t.datetime :time
      t.belongs_to :product, index: true
      t.belongs_to :customer, index: true

      t.timestamps
    end
  end
end
