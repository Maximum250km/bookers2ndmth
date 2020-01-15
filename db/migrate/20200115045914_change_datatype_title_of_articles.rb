class ChangeDatatypeTitleOfArticles < ActiveRecord::Migration[5.2]
  def change
  	change_column :users, :postal_number, :integer
  end
end
