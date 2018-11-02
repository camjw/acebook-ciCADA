# frozen_string_literal: true

# Controller for the profile
class ProfilesController < ApplicationController
  include ProfilesHelper
  before_action :authenticate_user!
  protect_from_forgery unless: -> { request.format.json? }

  def show
    @user = User.find(params[:id])
    @posts = Post.where(profile_message: params[:id])
    @post = Post.new
    comments_posts
  rescue ActiveRecord::RecordNotFound
    render file: "#{Rails.root}/public/user404.html", layout: false,
           status: :not_found
  end

  def username_show
    @user = User.where(username: params[:username])[0]
    @posts = Post.where(profile_message: @user.id)
    @post = Post.new
    @comments = @post.comments.all
    @comment = @post.comments.build
    @image_posts = ImagePost.all
    render :show
  end

  def update
    puts params
    current_user.update(profile_pic_post_params)
    redirect_back(fallback_location: root_url)
  end

  private
  def profile_pic_post_params
    params.require(:user).permit(:profile_pic)
  end
end
