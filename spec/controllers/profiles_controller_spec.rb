# frozen_string_literal: true

require 'rails_helper'

RSpec.describe ProfilesController, type: :controller do
  describe 'POST #update_settings' do
    it 'returns updates user settings' do
      user = User.create(email: 'test@mail.com', username: 'convict',
                         password: 'password',
                         font: 'Lobster',
                         background_colour: '#FFFFFF')
      post :update_settings, params: { profile:
        { font: 'Times New Roman', background_colour: '#FF0000',
          userId: user.id } }
      expect(response).to have_http_status(:success)
    end
  end
end
