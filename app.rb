require 'json'

class App < Sinatra::Base

  get '/' do
    "Hello, World!"
  end

  post '/' do
    request.body.rewind
    data = request.body.read
    data = JSON.parse(data)
    "Received #{data.size} people's contact information."
  end

  get '/slow' do
    sleep(rand)
    "Hello, finally!"
  end

end
