class V1::Book < ApplicationRecord
  belongs_to :category, foreign_key: :v1_category_id, class_name: V1::Category, optional: true
  
  has_many :author_books, foreign_key: :v1_book_id, class_name: V1::AuthorBook, dependent: :destroy
  has_many :authors, through: :author_books, source: :author
end
