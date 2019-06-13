class TrashController < ApplicationController
  def index
    @trash = Trash.order(:name)
  end

  def create
    @trash = Trash.new(
      name: params[:name],
      accepted: params[:accepted],
      alternative: params[:alternative],
      mail: params[:mail],
      address: params[:address],
      phone: params[:phone],
      website: params[:website],
      details: params[:details],
      )
    if @trash.save
      redirect_to @trash
    else
      render 'new.html.erb'
    end
  end
  
  def show
    @trash = Trash.find(params[:id])
    puts @trash
  end

  def new
    # @trash = Trash.new
  end
end
