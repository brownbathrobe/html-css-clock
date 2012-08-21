require "sinatra"
require "shotgun"

get "/" do
  time   = Time.now

  hours  = time.hour > 11 ? time.hour - 12 : time.hour
  mins   = time.min
  secs   = time.sec
  @secs  = secs
  @mins  = (mins * 60.0 + secs) / 3600 * 360
  @hours = (hours * 3600.0 + mins * 60 + secs) / 43200 * 360

  puts "#{@hours}:#{@mins}:#{@secs}"
  erb :index
end