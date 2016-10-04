class HomeController < ApplicationController
  def index
    @note = current_user.notes.new
    @notes = current_user.notes
  end
end
