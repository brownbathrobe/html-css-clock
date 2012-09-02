require 'rack'
require 'rack/contrib'
require './app'

use Rack::TimeZone

run Sinatra::Application
