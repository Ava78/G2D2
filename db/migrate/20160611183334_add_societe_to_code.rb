class AddSocieteToCode < ActiveRecord::Migration
  def change
    add_column :codes, :societe, :string
  end
end
