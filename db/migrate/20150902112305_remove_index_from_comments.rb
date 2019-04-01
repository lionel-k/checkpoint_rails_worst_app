class RemoveIndexFromComments < ActiveRecord::Migration[5.2]
  def change
    remove_index :comments, column: :article_id
  end
end
