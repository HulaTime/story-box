class LandingPageController < ApplicationController

  def index
  	redirect_to news_path if !current_user
  end

end
