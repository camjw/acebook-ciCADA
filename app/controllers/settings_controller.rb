# frozen_string_literal: true

# Controller for the settings
class SettingsController < ApplicationController
  protect_from_forgery unless: -> { request.format.json? }

  def display_settings
    user = User.find(params[:id])
    puts user
    respond_to do |format|
      response = { :font => user.font,
                   :background_colour => user.background_colour }
      puts response
      format.json  { render :json => response }
    end
  end

  def update_settings
    parsed_json = params[:profile]
    user = User.find(parsed_json[:userId])
    user.update(font: parsed_json[:font],
                background_colour: parsed_json[:background_colour])
  end
end
