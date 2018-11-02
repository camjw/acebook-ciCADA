# frozen_string_literal: true

# Devise Class for our Users that interacts with our database
class User < ApplicationRecord
  mount_uploader :profile_pic, PictureUploader
  validates_processing_of :profile_pic

  has_many :posts
  has_many :image_posts
  has_many :comments
  validates_format_of :username, with: /^[a-zA-Z][a-zA-Z0-9.,$;]+$/,
                                 multiline: true
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :likes, dependent: :destroy
  has_many :image_likes, dependent: :destroy
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :trackable
end
