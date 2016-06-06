class AddEnvironnementToCodes < ActiveRecord::Migration
  def change
    add_column :codes, :environnement, :string
  end
end
