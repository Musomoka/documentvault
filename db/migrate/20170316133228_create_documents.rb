class CreateDocuments < ActiveRecord::Migration
  def change
    create_table :documents do |t|
      t.string :name
      t.text :description
      t.string :image
      t.date :per_from
      t.date :per_to

      t.timestamps null: false
    end
  end
end
