class AddPostcodeToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :address_building, :string
    add_column :users, :postcode, :integer
  end
end
