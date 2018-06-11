# begin to build a simple program that models Instagram
# you should have a User class, a Photo class and a comment class
require 'pry'

class User

  @@all = []

  attr_accessor :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def photos
    Photo.all.select do |photo|
      photo.user == self
    end
  end

end

class Photo

  @@all = []

  attr_accessor :user, :comments

  def initialize
    @user = nil
    @comments = []
    @@all << self
  end

  def user=(user)
    @user = user
    @user.photos << self
  end

  def self.all
    @@all
  end

  def make_comment(message)
    @comments << Comment.new(message)
  end

end

class Comment

  attr_accessor :comment

  @@all = []

  def initialize(comment)
    @comment = comment
    @@all << self
  end

  def self.all
    @@all
  end

end


photo = Photo.new
user = User.new("Sophie")
photo.user = user
photo.user.name
# => "Sophie"
user.photos
# => [<photo 1>]


photo.comments
# => []

photo.make_comment("this is such a beautiful photo of your lunch!! I love photos of other people's lunch")
photo.comments
# => [<comment1>]

binding.pry

Comment.all
#=> [<comment1>]
