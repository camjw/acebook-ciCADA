# frozen_string_literal: true

require 'rails_helper'

# Specs in this file have access to a helper object that includes
# the CommentsHelper. For example:
#
# describe CommentsHelper do
#   describe "string concat" do
#     it "concats two strings with spaces" do
#       expect(helper.concat_strings("this","that")).to eq("this that")
#     end
#   end
# end
RSpec.describe SettingsHelper, type: :helper do
  let(:user) { FactoryBot.create(:user) }

  before :each do
    login_as(user, scope: :user)
  end

  describe '#get_comment_email' do
    it 'gets the correct email for a given user_id' do
      controller.params = { setting: { userId: user.id, font: 'Lobster',
                            background_colour: 'test' } }
      helper.update_settings
      expect(user.font).to eq 'Lobster'
    end
  end
end
