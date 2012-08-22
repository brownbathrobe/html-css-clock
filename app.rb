require "sinatra"
require "shotgun"

get "/" do
  time = Time.now
  secs = time.sec
  mins = time.min
  hours = time.hour > 11 ? time.hour - 12 : time.hour

  mins_in_secs = mins * 60
  hrs_in_secs = hours * 3600

  degrees = 360
  secs_in_1_min = 60.0
  secs_in_1_hr = 3600.0
  secs_in_12_hrs = 43200.0

  @secs = secs / secs_in_1_min * degrees
  @mins = (mins_in_secs + secs) / secs_in_1_hr * degrees
  @hours = (hrs_in_secs + mins_in_secs + secs) / secs_in_12_hrs * degrees

  styles = [:roman, :numeric, :dashes, :silly]
  erb styles.sample, :layout => :index
end
