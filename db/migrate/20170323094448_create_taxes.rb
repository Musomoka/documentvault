class CreateTaxes < ActiveRecord::Migration
  def change
    create_table :taxes do |t|
      t.string :name
      t.string :tax_number
      t.text :description
      t.integer :periods
      t.date :start_date

      t.timestamps null: false
    end
  end
end
