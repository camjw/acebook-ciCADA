# frozen_string_literal: true

require 'rails_helper'

RSpec.feature 'ChatRoom', type: :feature do
  scenario 'User can sign up and embark on a chatting journey' do
    signup
    visit '/rooms/show'
    find('.send-message').set("Hello\n")
    expect(page).to have_content('Say something:')
  end
end
