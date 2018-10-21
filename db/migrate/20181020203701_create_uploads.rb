class CreateUploads < ActiveRecord::Migration[5.2]
  def change
    create_table :uploads do |t|
      t.string :path
      t.string :caption
      t.integer :upvotes, default: 0
      t.belongs_to :user, foreign_key: true
      t.belongs_to :location, foreign_key: true
      t.belongs_to :category, foreign_key: true

      t.timestamps
    end
  end
end
