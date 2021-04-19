class CreateBookmarkCategories < ActiveRecord::Migration[6.1]
  def change
    create_table :bookmark_categories do |t|
      t.references :bookmark, foreign_key: true
      t.references :category, foreign_key: true

      t.timestamps
    end
  end
end
