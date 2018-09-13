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
    puts @session[:item]
    erb :checkout
  end
end
