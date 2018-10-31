# frozen_string_literal: true

require 'rails_helper'

RSpec.feature 'Username Route', type: :feature do
  scenario 'Can visit their route with username' do
    signup
    visit '/test'
    expect(page).to have_content('Welcome to Your profile test')
  end
end
