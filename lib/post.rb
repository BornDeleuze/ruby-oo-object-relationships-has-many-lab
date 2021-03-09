require'pry'
class Post
  attr_accessor :title, :author

  @@all = []

  def initialize(title)
    @title = title
    @@all << self
  end

  def self.all
    @@all
  end

  def author_name
    name = nil
    # binding.pry
    if author 
      name = @author.name
    name
    end
  end
end