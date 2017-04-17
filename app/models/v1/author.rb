class V1::Author < ApplicationRecord
  has_many :author_books, foreign_key: :v1_author_id, class_name: V1::AuthorBook, dependent: :destroy
  has_many :books, through: :author_books, source: :book
end
