class LandingPageController < ApplicationController

  def index
    url = "https://content.guardianapis.com/search?api-key=#{ENV['GUARDIAN_KEY']}"
    uri = URI(url)
    @guardian_latest = Net::HTTP.get(uri)
    # JSON.parse(response)
  end

end
