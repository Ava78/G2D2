class CreateCode2Ds < ActiveRecord::Migration
  def change
    create_table :code2_ds do |t|
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
