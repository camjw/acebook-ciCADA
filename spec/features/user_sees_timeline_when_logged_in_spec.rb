# frozen_string_literal: true

require 'rails_helper'

RSpec.feature 'Timeline', type: :feature do
  scenario 'Can see when logged in' do
    signup
    visit '/posts'
    click_link 'New Post'
    fill_in 'Message', with: 'Hello, world!'
    click_button 'Submit'
    visit '/'
    expect(page).to have_content('Hello, world!')
    expect(page).to have_content('Image Posts')
  end
end
