require 'json'
require 'sinatra'
require 'sinatra/reloader'

# Used when setting URL on Venmo
# https://venmo.com/account/settings/developers
get '/webhook_url' do
  params[:venmo_challenge].to_s
end

get '/' do
  'hi'
end

post '/' do
  @json = JSON.parse request.body.read
  note = @json['data']['note'].downcase
  puts note
  `./control.sh #{note}`

  200
end




# OLD STUFF
=begin
get '/:button' do
  dothing params[:button]
end

def dothing x
  `./control.sh #{x}`
end

=end
