require_relative 'app/rubyist_contract_interface'

class MySinatraApp < Sinatra::Base
  set :haml, :format => :html5

  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    haml :index, locals: {name: nil, address: nil}
  end

  post '/' do
    RubyistContractInterface.create(params[:rubyist_name],
                                    params[:rubyist_address])
    name = RubyistContractInterface.get(params[:rubyist_address])
    redirect to("/find?address=#{params[:rubyist_address]}")
  end

  get '/find' do
    name = RubyistContractInterface.get(params[:address])
    haml :index, locals: {name: name, address: params[:address]}
  end
end
