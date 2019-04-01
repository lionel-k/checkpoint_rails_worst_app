class CreateArticles < ActiveRecord::Migration[5.2]
  def change
    create_table :articles do |t|
      t.string :name
      t.text :body
      t.references :author, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
