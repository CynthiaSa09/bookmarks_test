class CreateBookmarkKinds < ActiveRecord::Migration[6.1]
  def change
    create_table :bookmark_kinds do |t|
      t.references :bookmark, foreign_key: true
      t.references :kind, foreign_key: true

      t.timestamps
    end
  end
end
