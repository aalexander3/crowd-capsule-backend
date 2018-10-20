class AddCategoryType < ActiveRecord::Migration[5.2]
  def change
    add_column :uploads, :category, :string
  end
end
