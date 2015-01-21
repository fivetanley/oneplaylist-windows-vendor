module ControllerSpecHelper
  include Rack::Test::Methods

  def app
    Rails.application
  end

  def json
    Map JSON.parse last_response.body
  end
end
