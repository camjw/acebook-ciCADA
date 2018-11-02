# frozen_string_literal: true

require 'rails_helper'

RSpec.feature 'Timeline', type: :feature do
  scenario 'Can not see since not logged in' do
    visit '/'
    expect(page).to have_content('Login')
  end
end
