require 'json'
require 'logger'

class App < Sinatra::Base
  #configure do
    #LOGGER = Logger.new("log/performance.log")
  #end

  #before do
    #@start_time = Time.now
    #LOGGER.info "Starting request for #{request.path_info} at #{@start_time}"
  #end

  #after do
    #LOGGER.info "completed request in #{Time.now - @start_time}"
  #end

  get '/' do
    "Hello, World!"
  end

  post '/' do
    request.body.rewind
    data = request.body.read
    data = JSON.parse(data)
    "Received #{data.size} people's contact information."
  end

  get '/slow/?' do
    sleep(rand)
    "Hello, finally!"
  end

end
