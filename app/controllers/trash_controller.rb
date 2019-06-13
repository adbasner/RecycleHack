class TrashController < ApplicationController
  def index
    @trash = Trash.order(:name)
    render 'index.html.erb'
  end
  
  def show
    @trash = Trash.find(params[:id])
    puts @trash
  end
end
