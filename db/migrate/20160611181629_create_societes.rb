class CreateSocietes < ActiveRecord::Migration
  def change
    create_table :societes do |t|
      t.string :nom
      t.string :adresse

      t.timestamps null: false
    end
  end
end
