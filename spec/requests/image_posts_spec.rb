require 'rails_helper'

RSpec.describe "ImagePosts", type: :request do
  describe "GET /image_posts" do
    it "works! (now write some real specs)" do
      get image_posts_path
      expect(response).to have_http_status(200)
    end
  end
end
