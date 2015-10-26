class TvshowsApp < Sinatra::Base

  # about page
  get "/about" do
    erb(:about)
  end

  # index
  get '/backlog' do
    @backlogs = Tvshow.all
    erb(:"backlog/index")
  end

  # new
  get '/backlog/new' do
    @backlog = Tvshow.new
    erb(:"backlog/new")
  end

  # create
  post '/backlog' do
    @backlog = Tvshow.new(params[:backlog])
    if @backlog.save
      redirect("/backlog/#{@backlog.id}")
    else
      erb(:"backlog/new")
    end
  end


end