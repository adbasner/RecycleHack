class TrashController < ApplicationController
  def index
    @trash = Trash.order(:name)
  end

  def create
    @trash = Trash.new(post_params)
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
  end

  private

  def post_params
    params.permit(:name, :accepted, :alternative, :mail, :address, :phone, :website, :details)
  end
end
