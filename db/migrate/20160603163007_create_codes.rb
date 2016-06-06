class CreateCodes < ActiveRecord::Migration
  def change
    create_table :codes do |t|
      t.string :env
      t.string :domaine
      t.string :categorie_metier
      t.string :type_doc
      t.string :client_string
      t.string :statut_client
      t.integer :order
      t.belongs_to :document, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
