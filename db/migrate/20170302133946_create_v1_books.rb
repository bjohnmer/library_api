class CreateV1Books < ActiveRecord::Migration[5.0]
  def change
    create_table :v1_books do |t|
      t.string :title
      t.references :v1_category, foreign_key: true

      t.timestamps
    end
  end
end
