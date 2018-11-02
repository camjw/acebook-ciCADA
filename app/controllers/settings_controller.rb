# frozen_string_literal: true

# Controller for the settings
class SettingsController < ApplicationController
  include SettingsHelper
  protect_from_forgery unless: -> { request.format.json? }

  def display_settings
    user = User.find(params[:id])
    respond_to do |format|
      response = { font: user.font,
                   background_colour: user.background_colour }
      format.json  { render json: response }
    end
  end
end
