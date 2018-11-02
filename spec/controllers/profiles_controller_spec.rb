# frozen_string_literal: true

require 'rails_helper'

RSpec.describe ProfilesController, type: :controller do
  let(:valid_session) { {} }

  let(:user) { FactoryBot.create(:user) }

  before :each do
    login_as(user, scope: :user)
  end

  describe '#update' do
    it 'redirects to the profile if there is a profile_id' do
      post :update, params: { user: { profile_pic: 'test.png' } },
                    session: valid_session
      expect(response).to have_http_status(302)
    end
  end
end
