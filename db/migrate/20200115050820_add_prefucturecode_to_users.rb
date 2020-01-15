class AddPrefucturecodeToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :add_column, :string
    add_column :users, :prefecture_code, :integer
  end
end
