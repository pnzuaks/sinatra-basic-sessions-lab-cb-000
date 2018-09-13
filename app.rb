require_relative 'config/environment'


class App < Sinatra::Base
  configure do
    enable :sessions
    set :session_secret, "secret"
  end

  get '/' do
    erb :index
  end

  post '/checkout' do
    @item = params[:item]
    session[:item] = @item
    @session = session

    # store_name("names.txt", @name)
    # session[:message] = "Successfully stored the name #{@name}."
    erb :checkout
  end
end
