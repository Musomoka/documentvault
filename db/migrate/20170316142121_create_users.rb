class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :surname
      t.string :first
      t.string :name
      t.boolean :admin
      t.string :role

      t.timestamps null: false
    end
  end
end
