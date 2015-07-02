class CreateSalesPersons < ActiveRecord::Migration
  def change
    create_table :sales_persons do |t|
      t.string :name, null: false
      t.integer :age, null: false

      t.timestamps
    end
  end
end
