# frozen_string_literal: true

require 'rails_helper'

RSpec.describe SettingsController, type: :controller do
  let(:user) { FactoryBot.create(:user) }

  before :each do
    login_as(user, scope: :user)
  end

  describe 'POST #update_settings' do
    it 'updates user settings' do
      post :update_settings, params: { setting:
        { font: 'Times New Roman', background_colour: '#FF0000',
          userId: user.id } }
      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET #display_settings' do
    it 'returns user settings' do
      get :display_settings, params: { id: user.id }, format: :json
      expect(response).to have_http_status(:success)
    end
  end
end
