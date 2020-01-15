class AddAddressToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :adress, :string
    add_column :users, :postal_number, :string
  end
end
