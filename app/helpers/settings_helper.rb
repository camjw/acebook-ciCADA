# frozen_string_literal: true

# words to calm down rubocop
module SettingsHelper
  def update_settings
    parsed_json = params[:setting]
    user = User.find(parsed_json[:userId])
    user.update(font: parsed_json[:font],
      background_colour: parsed_json[:background_colour])
  end
end
