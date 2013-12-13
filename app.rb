class App < Sinatra::Base

  get '/' do
    "Hello, World!"
  end

  get '/slow' do
    sleep(rand)
    "Hello, finally!"
  end

end
