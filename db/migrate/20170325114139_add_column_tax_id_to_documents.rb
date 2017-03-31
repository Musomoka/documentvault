class AddColumnTaxIdToDocuments < ActiveRecord::Migration
  def change
    add_reference :documents, :tax, index: true, foreign_key: true
  end
end
