class Article < ActiveRecord::Base
  belongs_to :author
  has_many :comments

  def self.all_names
    all.map(&:name)
  end

  def self.five_longest_article_names
    all.sort_by(&:name).last(5).map(&:name)
  end

  def self.articles_with_names_less_than_20_char
    select do |art|
      art.name.length < 20
    end
  end
end
