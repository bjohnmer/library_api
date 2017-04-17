class CreateV1Authors < ActiveRecord::Migration[5.0]
  def change
    create_table :v1_authors do |t|
      t.string :first_name
      t.string :last_name
      t.text :bio

      t.timestamps
    end
  end
end
