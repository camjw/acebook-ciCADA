# frozen_string_literal: true

class ImagePost < ApplicationRecord
  mount_uploader :picture, PictureUploader
  belongs_to :user
end
