class MySinatraApp < Sinatra::Base
  set :haml, :format => :html5

  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    @foo = ENV['ETH_DEFAULT_ACCOUNT']
    haml :index
  end

  post '/' do
    haml :index
  end
end