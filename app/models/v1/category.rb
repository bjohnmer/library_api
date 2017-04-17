class V1::Category < ApplicationRecord
  has_many :books, foreign_key: :v1_category_id, class_name: V1::Book
end
