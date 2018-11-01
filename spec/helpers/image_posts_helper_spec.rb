# frozen_string_literal: true

require 'rails_helper'

# Specs in this file have access to a helper object that includes
# the ImagePostsHelper. For example:
#
# describe ImagePostsHelper do
#   describe "string concat" do
#     it "concats two strings with spaces" do
#       expect(helper.concat_strings("this","that")).to eq("this that")
#     end
#   end
# end
RSpec.describe ImagePostsHelper, type: :helper do
  let(:user) { FactoryBot.create(:user) }

  before :each do
    login_as(user, scope: :user)
  end

  describe '#find_image_post_username' do
    it 'gets the correct email for a given image comment' do
      post = ImagePost.create(user_id: user.id, caption: 'test',
                              picture: 'test.png')
      expect(helper.find_image_post_username(post)).to eq 'wethebestmusic'
    end
  end

  describe '#find_image_post_email' do
    it 'gets the correct email for a given image comment' do
      post = ImagePost.create(user_id: user.id, caption: 'test',
                              picture: 'test.png')
      expect(helper.find_image_post_email(post)).to eq 'factory@mail.co'
    end
  end

  describe '#find_image_comments' do
    it 'gets the image comments for a post' do
      post = ImagePost.create(user_id: user.id, caption: 'test',
                              picture: 'test.png')
      expect(helper.find_image_comments(post)).to eq []
    end
  end
end
