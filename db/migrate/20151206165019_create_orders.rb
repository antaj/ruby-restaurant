class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :name
      t.string :phone
      t.string :address
      t.datetime :date
      t.decimal :total
      t.references :food, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
