class CreateV1Categories < ActiveRecord::Migration[5.0]
  def change
    create_table :v1_categories do |t|
      t.string :name

      t.timestamps
    end
  end
end
