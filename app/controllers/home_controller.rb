class HomeController < ApplicationController
  require 'jwt'
  def index
    payload = {
      :resource => {:question => 1},
      :params => {},
      :exp => Time.now.to_i + (60 * 10) # 10 minute expiration
    }
    token = JWT.encode payload, ENV.fetch("METABASE_SECRET_KEY")
    @iframe_url = ENV.fetch("METABASE_SITE_URL") + "/embed/question/" + token + "#theme=night&bordered=true&titled=true"
  end
end
