class AddCategorieToCodes < ActiveRecord::Migration
  def change
    add_column :codes, :categorie, :string
  end
end
