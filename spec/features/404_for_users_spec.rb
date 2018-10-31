# frozen_string_literal: true

require 'rails_helper'

RSpec.feature '404 for users', type: :feature do
  scenario 'returns error message when user doesnt exist' do
    signup
    visit '/profiles/10000'
    expect(page).to have_content "404 Profile doesn't exist!"
  end
end
