class CreatePhones < ActiveRecord::Migration
  def change
    create_table :phones do |t|
      t.string :name, null: false
      t.belongs_to :manufacturer, null: false
      t.integer :year, null: false
      t.string :battery_life, null: false
      t.string :description

      t.timestamps
    end
  end
end
