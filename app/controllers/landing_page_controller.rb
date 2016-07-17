class LandingPageController < ApplicationController

  def index
    @guardian_latest = HTTParty.get("https://content.guardianapis.com/search?api-key="+ENV['GUARDIAN_KEY'])
  end

end
