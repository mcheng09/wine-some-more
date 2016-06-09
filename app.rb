require 'sinatra'
class WineList < Sinatra::Base
  # Dummy data
  # WINE_LIST = ["2008 Beringer Nightingale Napa Valley","2009 Inglenook Rubicon", "2012 Etude Cabernet"]

  #HOMEPAGE -->
  get '/' do
    erb (:"index")
  end

  # INDEX page --> List of all the wine submitted
  get '/wines' do
    @wines = Wine.all
    erb(:"wines/index")
  end

  # NEW page --> Redirects to a forms page to submit a wine entry
  # Ran shotgun while creating new wine. Console confirmed a Commit to the db
  # Wine.all in tux revealed the added entry
  get '/wines/new' do
    @wine = Wine.new
    erb(:"wines/new")
  end

  # SHOW --> Shows just one item on the winelist
  get '/wines/:id' do
    @wine = Wine.find(params[:id])
    erb(:"wines/show")
  end

  # CREATE --> Creates a new wine entry
  post '/wines' do
    @wine = Wine.new(params[:wine])
    if @wine.save
      redirect('/wines')
    else
      erb(:"wines/new")
    end
  end

  # EDIT --> Redirects to the edits form page
  get '/wines/:id/edit' do
    @wine = Wine.find(params[:id])
    erb(:"wines/edit")
  end

  # UPDATE --> Edits a wine entry
  post '/wines/:id' do
    @wine = Wine.find(params[:id])
    @wine.update_attributes(params[:wine])
    redirect("/wines/#{@wine.id}")
  end


  #DESTROY --> Deletes a wine entry
  post "/wines/:id/delete" do
    @wine = Wine.find(params[:id])
    @wine.destroy
    redirect('/wines')
  end

end
