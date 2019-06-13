class PagesController < ApplicationController
  def index
    response = Unirest.get('https://raw.githubusercontent.com/chicagoruby/hack-night-is-it-recyclable/master/data/chicago-recycling-guide.json')
    @trash = response.body["data"]
    # puts @trash
    render 'index.html.erb'
  end
  
end
