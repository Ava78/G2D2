class CreateCodes < ActiveRecord::Migration
  def change
    create_table :codes do |t|
      t.string :env
      t.string :domaine
      t.string :categorie_metier
      t.string :type_doc
      t.string :client
      t.string :statut_client

      t.timestamps null: false
    end
  end
end
