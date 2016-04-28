require 'http'

module API
  class AccessTokenController < API::BaseController

    def options
      # blank section for CORS
      render :text => ''
    end

    def create
      #   change this to a POST action
      # Fetch params like this from the POST data and use them in the request
      if params[:code] and params[:client_id] and params[:client_secret]
        response = HTTP.post(
            'http://54.201.124.60/oauth/token',
            :json => {
                :client_id => params[:client_id],
                :client_secret => params[:client_secret],
                :redirect_uri => 'urn:ietf:wg:oauth:2.0:oob',
                :grant_type => 'authorization_code',
                :code => params[:code]
            })
        access_token = response.to_s
        render json: access_token, status: 200
      else
        render json: 'Please supply a code', status: 400
      end
    end
  end
end
