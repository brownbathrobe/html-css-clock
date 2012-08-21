require "sinatra"
require "shotgun"

get "/" do
  File.read('index.html')
end
