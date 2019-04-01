class AddUpvotesToArticles < ActiveRecord::Migration[5.2]
  def change
    add_column :articles, :upvotes, :integer
  end
end
