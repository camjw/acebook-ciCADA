# frozen_string_literal: true

# require 'rails_helper'

RSpec.feature 'Username Route', type: :feature do
  scenario 'Can visit their route with username' do
    signup
    click_link 'Logout'
    click_link 'Sign Up'
    fill_in 'user_email', with: 'tests2@mail.com'
    fill_in 'user_username', with: 'test2'
    fill_in 'user_password', with: 'test1234'
    fill_in 'user_password_confirmation', with: 'test1234'
    click_button 'Sign up'
    visit '/test'
    expect(page).to have_content("test's profile")
  end
end
