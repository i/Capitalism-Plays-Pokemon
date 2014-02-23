require 'json'
require 'sinatra'
require 'sinatra/reloader'
require 'cgi'
require 'pp'

set :bind, '0.0.0.0'

# Used when setting URL on Venmo
# https://venmo.com/account/settings/developers
get '/webhook_url' do
  params[:venmo_challenge].to_s
end

post '/' do
  @json = JSON.parse request.body.read
  note = parse_note @json['data']['note'].downcase
  `./control.sh #{note}`
  
  200
end

get '/' do
  'hi'
end

post '/email' do
  @subject = ""
  @text = ""
  request.POST.each do |k,v| 
    @subject = v if k == "subject" 
    @text = v if k == "text"
  end
  @subject = parse_note @subject.downcase
  puts @subject
  `./control.sh #{@subject}`
  
  200
end



# OLD STUFF


# parse venmo input into single button press
def parse_note note
  note.chomp!
  note.strip!
  if note.include? "start"
    return "start"
  elsif note.include? "left"
    return "left"
  elsif note.include? "down"
    return "down"
  elsif note.include? "right"
    return "right"
  elsif note.include? "up"
    return "up"
  elsif note=='b' 
    return "b"
  elsif note=='a'
    return "a"
  end

  nil
end
  
