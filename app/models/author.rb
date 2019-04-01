class Author < ActiveRecord::Base
  has_many :articles

  def self.generate_authors(count = 1000)
    count.times do
      Fabricate(:author)
    end
    first.articles << Article.create(name: 'some commenter', body: 'some body')
  end

  def self.most_prolific_writer
    all.max_by { |a| a.articles.count }
  end

  def self.with_most_upvoted_article
    all.max_by do |auth|
      auth.articles.max_by(&:upvotes)
    end.name
  end
end
