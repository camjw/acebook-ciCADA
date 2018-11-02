# frozen_string_literal: true

# Controller for the profile
class RoomsController < ApplicationController
  def show
    @messages = Message.all
    @user = User.find(current_user.id)
  end
end
