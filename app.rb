require "sinatra"
require "shotgun"

get "/" do
  time = Time.now
  @hours = time.hour  > 11 ? time.hour - 12 : time.hour
  @mins = time.min
  @secs = time.sec

  @hours = 100
  @mins = 200
  @secs = 300
  puts "#{@hours}:#{@mins}:#{@secs}"
  erb :index
  # File.read('index.html')
end
