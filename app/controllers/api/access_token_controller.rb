require 'http'

module API
  class AccessTokenController < ApplicationController
    def index
      access_token = HTTP.post(
          'http://54.201.124.60/oauth/token',
          :json => {
              :client_id => '9a8ef3e5805c1a42c73dfa5104e27b1c2d942b527a4a815f7f9a7387b064ee67',
              :client_secret => '4c8fd1543496252d62d7cf51e30d1f940cb86679f88d14878c022d70dbd12bcf',
              :redirect_uri => 'urn:ietf:wg:oauth:2.0:oob',
              :grant_type => 'authorization_code',
              :code => '27df54f7826fb908aa74b9c1309bb34390ffb89484b9136ca2d81e9063232e9f'
          })
      render json: access_token, status: 200
    end
  end
end
