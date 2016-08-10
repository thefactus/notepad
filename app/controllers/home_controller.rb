class HomeController < ApplicationController
  def index
    @note = current_user.notes.new
  end
end
