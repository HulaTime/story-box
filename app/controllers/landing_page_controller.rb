class LandingPageController < ApplicationController

  def index
    @guardian_latest = HTTParty.get "https://content.guardianapis.com/"
  end

end
