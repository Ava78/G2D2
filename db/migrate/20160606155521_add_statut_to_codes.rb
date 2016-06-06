class AddStatutToCodes < ActiveRecord::Migration
  def change
    add_column :codes, :statut, :string
  end
end
