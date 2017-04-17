class CreateV1AuthorBooks < ActiveRecord::Migration[5.0]
  def change
    create_table :v1_author_books do |t|
      t.references :v1_author, foreign_key: true
      t.references :v1_book, foreign_key: true

      t.timestamps
    end
  end
end
