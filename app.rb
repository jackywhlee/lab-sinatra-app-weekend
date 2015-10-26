class TvshowsApp < Sinatra::Base
  # root route
  get "/" do
    erb(:home)
  end
end