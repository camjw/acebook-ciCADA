# frozen_string_literal: true

# Controller for the comments
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

  def update_settings
    parsed_json = params[:profile]
    user = User.find(parsed_json[:userId])
    user.update(font: parsed_json[:font],
                background_colour: parsed_json[:background_colour])
  end
end
