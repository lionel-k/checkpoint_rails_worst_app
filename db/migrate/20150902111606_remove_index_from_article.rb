class RemoveIndexFromArticle < ActiveRecord::Migration[5.2]
  def change
    remove_index :articles, column: :author_id
  end
end
