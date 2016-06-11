class AddSlugToCode < ActiveRecord::Migration
  def change
    add_column :codes, :slug, :string
  end
end
