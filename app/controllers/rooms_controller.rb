# frozen_string_literal: true

<<<<<<< HEAD
# Controller for the profile
=======
>>>>>>> 44083affd5ab4e42ca30392874f830777e97f6fc
class RoomsController < ApplicationController
  def show
    @messages = Message.all
    @user = User.find(@messages)
  end
end
