class Post
  attr_reader :id, :title, :body, :created_at

  def initialize id, title, body, created_at
    @id = id
    @title = title
    @body = body
    @created_at = created_at
    @published = false
  end

  def self.find id
    post = POSTS.find { |post| post.id == id }
  end

  def publish
    @published = true
    return POSTS.count { |post| !post.published? }
  end

  def unpublish
    @published = false
  end

  def published?
    @published
  end
end

# Sample Data

POSTS = [
  Post.new(
    1,
    "Introduce null obj ptrn",
    "Post body should here",
    Time.now
  ),
  Post.new(
    2,
    "Introduce null obj ptrn2",
    "Post body should here2",
    Time.now
  ),
  Post.new(
    3,
    "Introduce null obj ptrn3",
    "Post body should here3",
    Time.now
  ),
  Post.new(
    4,
    "Introduce null obj ptrn3",
    "Post body should here3",
    Time.now
  )
]