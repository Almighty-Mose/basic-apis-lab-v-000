class RepositoriesController < ApplicationController

  def search

  end

  def github_search
    # Faraday.get 'https://api.foursquare.com/v2/venues/search' do |req|
    #   req.params['client_id'] = client_id
    #   req.params['client_secret'] = client_secret
    #   req.params['v'] = '20160201'
    #   req.params['near'] = params[:zipcode]
    #   req.params['query'] = 'coffee shop'
    # end
    # render 'search'
    Faraday.get 'https://api.github.com/search/repositories' do |req|
      req.params['client_id'] =
      req.params['client_secret'] =
      req.params['q'] = 'tetris'
    end
    render 'search'
  end
end
