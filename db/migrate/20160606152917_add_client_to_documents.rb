class AddClientToDocuments < ActiveRecord::Migration
  def change
    add_column :documents, :client, :string
  end
end
