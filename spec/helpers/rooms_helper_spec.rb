# frozen_string_literal: true

require 'rails_helper'

# Specs in this file have access to a helper object that includes
# the RoomsHelper. For example:
#
# describe RoomsHelper do
#   describe "string concat" do
#     it "concats two strings with spaces" do
#       expect(helper.concat_strings("this","that")).to eq("this that")
#     end
#   end
# end
RSpec.describe RoomsHelper, type: :helper do
  let(:user) { FactoryBot.create(:user) }

  before :each do
    login_as(user, scope: :user)
  end

  describe '#find_message_username' do
    it 'gets the correct email for a given image comment' do
      message = Message.create(user_id: user.id, content: 'test')
      expect(helper.find_message_username(message)).to eq 'wethebestmusic'
    end
  end

  describe '#user' do
    it 'gets the correct email for a given image comment' do
      message = Message.create(user_id: user.id, content: 'test')
      expect(helper.find_message_user(message)).to eq user
    end
  end
end
