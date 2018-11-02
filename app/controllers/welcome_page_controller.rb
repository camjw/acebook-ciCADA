# frozen_string_literal: true

# Runs the logic for the welcome page.
class WelcomePageController < ApplicationController
  def sign_in; end

  def timeline
    if current_user
      @posts = Post.all
      @image_posts = ImagePost.all
      @user_email = current_user.email
    else
      landing
    end
  end

  def landing
    render 'landing_page'
  end
end
