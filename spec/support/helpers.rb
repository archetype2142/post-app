module Helpers
  include Rails.application.routes.url_helpers

  def create_post(content, author)
  	Post.new(content: content, author: author)
  end
end