require 'test_helper'

class GetAccessTokenTest < ActionDispatch::IntegrationTest

  # Called before every test method runs. Can be used
  # to set up fixture information.
  def setup
    # Do nothing
  end

  # Called after every test method runs. Can be used to tear
  # down fixture information.

  def teardown
    # Do nothing
  end

  test 'return an access token' do
    get '/api/access_token'
    assert_equal 200, response.status
    refute_empty response.body
  end
end