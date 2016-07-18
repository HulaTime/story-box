class HomeController < ApplicationController

  layout false

  def index
    if current_user
      @username = current_user.username
    else
      redirect_to '/'
    end
  end

end
