require 'sinatra'

get '/' do
  next_meetup_date = Date.parse('2014/4/5')
  @days = (next_meetup_date.mjd - Date.today.mjd).to_i
  erb :index
end
