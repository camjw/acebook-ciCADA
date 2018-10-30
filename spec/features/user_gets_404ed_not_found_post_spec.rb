# frozen_string_literal: true

require 'rails_helper'

RSpec.feature '404 for Posts', type: :feature do
  scenario 'Will get a 404 error message when going to wrong post url' do
    signup
    visit '/posts/1'
    expect(page).to have_content "404 That Post wasn't Found!"
  end
end
