class WineList < Sinatra::Base
  WINE_LIST = ["2008 Beringer Nightingale Napa Valley","2009 Inglenook Rubicon", "2012 Etude Cabernet"]

  # INDEX page --> List of all the wine submitted
  get '/wines' do
    @wines = WINE_LIST
    erb:index
  end

  # # SHOW --> Shows just one item on the winelist
  # get "/wines/:id" do
  #
  # end

  # NEW page --> Redirects to a forms page to submit a wine entry
  # Ran tux while creating new wine. Console confirmed a Commit to the db
  # Wine.all in tux revealed the added entry
  get '/wines/new' do
    @wine = Wine.new
    erb(:"wines/new")
  end

  # CREATE --> Creates a new wine entry
  post '/wines' do
    @wine = Wine.new(params[:wine])
    if @wine.save
      redirect("/wines")
    else
      erb(:"wines/new")
    end
  end

  # # UPDATE --> Edits a wine entry
  # put "/wines/:id" do
  #
  # end
  #
  # #DESTROY --> Deletes a wine entry
  # delete "/wines/:id" do
  #
  # end

end
