class WineJournal < Sinatra::Base
  WINE_JOURNAL = ["2008 Beringer Nightingale Napa Valley","2009 Inglenook Rubicon", "2012 Etude Cabernet"]

  get '/index' do
    @wines = WINE_JOURNAL
    erb:index

  end
end
