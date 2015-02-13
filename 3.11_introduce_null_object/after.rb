class Post
  attr_reader :id, :title, :body, :created_at

  def initialize id, title, body, created_at
    @id = id
    @title = title
    @body = body
    @created_at = created_at
    @published = false
  end

  def self.find_and_publish id
    post = POSTS.find { |post| post.id == id } || NullPost.new
    post.publish
  end

  def publish
    @published = true
  end
end

class NullPost
  def publish
    # noop
  end
end

# Sample Data

POSTS = [
  Post.new(
    1,
    "Introduce null obj ptrn",
    "Post body should here",
    Time.now
  )
]