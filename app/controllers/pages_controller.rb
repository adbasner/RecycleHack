class PagesController < ApplicationController
  def index
    response = Unirest.get('https://raw.githubusercontent.com/chicagoruby/hack-night-is-it-recyclable/master/data/chicago-recycling-guide.json')
    @trash = response.body["data"]
    # @single_item = []
    # @trash = []
    # if params['search']== ""  
    #   @single_item = response.body["data"]
    #   puts "no search term"
    # else
    #   response.body["data"].each do |i|
    #     if i["Material"].downcase  == params['search'].downcase 
    #       @trash.push(i)
    #       puts @trash
    #       puts 'found'
    #       break
    #     else
    #       puts @trash
    #       puts "not found"
    #     end
    #   end
    # end

    render 'index.html.erb'
  end
  
end
