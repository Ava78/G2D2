class AddEnvironnementToSociete < ActiveRecord::Migration
  def change
    add_column :societes, :environnement, :string
  end
end
