class V1::AuthorBook < ApplicationRecord
  belongs_to :author, foreign_key: :v1_author_id, class_name: V1::Author
  belongs_to :book, foreign_key: :v1_book_id, class_name: V1::Book
end
