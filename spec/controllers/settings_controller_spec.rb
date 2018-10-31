# frozen_string_literal: true

require 'rails_helper'

RSpec.describe SettingsController, type: :controller do
  describe 'POST #update_settings' do
    it 'updates user settings' do
      user = User.create(email: 'test@mail.com', password: 'password',
                         font: 'Lobster', background_colour: '#FFFFFF')
      post :update_settings, params: { setting:
        { font: 'Times New Roman', background_colour: '#FF0000',
          userId: user.id } }
      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET #display_settings' do
    it 'returns user settings' do
      user = User.create(email: 'test@mail.com', password: 'password',
                         font: 'Lobster', background_colour: '#FFFFFF')
      get :display_settings, params: { id: user.id }, format: :json
      expect(response).to have_http_status(:success)
    end
  end
end
