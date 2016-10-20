class BagsController < ApplicationController
  def new
    @bag = Bag.new
  end

  def edit
    @bag = Bag.find(params[:id])
  end

  def create
    @bag = Bag.new(bag_params)
    
    @bag.save
    redirect_to @bag
  end

  def update
    @bag = Bag.find(params[:id])

    if @bag.update(bag_params)
      redirect_to @bag
    else
      render 'edit'
    end
  end

  def show
    @bag = Bag.find(params[:id])
  end

  def index
    @bags = Bag.all
  end
 
  private
    def bag_params
      params.require(:bag).permit(:adv, :description, :link)
    end

end
