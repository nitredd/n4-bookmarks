class CreateBookmarks < ActiveRecord::Migration[6.1]
  def change
    create_table :bookmarks do |t|
      t.string :title
      t.string :url
      t.references :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
