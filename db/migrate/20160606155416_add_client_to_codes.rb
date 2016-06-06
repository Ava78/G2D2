class AddClientToCodes < ActiveRecord::Migration
  def change
    add_column :codes, :client, :string
  end
end
