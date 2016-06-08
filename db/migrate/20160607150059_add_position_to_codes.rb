class AddPositionToCodes < ActiveRecord::Migration
  def change
    add_column :codes, :position, :integer
  end
end
