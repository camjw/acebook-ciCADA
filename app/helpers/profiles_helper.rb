# frozen_string_literal: true

# Helper functions for the Profiles Controller
module ProfilesHelper
  def comments_posts
    @comments = @post.comments.all
    @comment = @post.comments.build
    @image_posts = ImagePost.all
  end
end
