class ToolsController < ApplicationController
  before_action :authenticate_user!
  
  def create
    # find the question associated with the favourite
    bag = Bag.find params[:bag_id]
    # create a new favourite based on the current_user from devise
    tools = current_user.tools.new
    # assign the bag id to the tool question_id column
    tools.bag = bag
    # if the question has been saved, redirect to the question and prompt the user that it has been favourited
    if tool.save
      redirect_to bag, notice: "Tool added!"
    else
      redirect_to bag, alert: "Tool not added to bag... woops"
    end  
  end

  def destroy
    # find the favourite created by the current user by passing in the the favourite_id
    tool = current_user.tools.find params[:id]
    # destroy the favourite
    tool.destroy
    # redirect to the question that had been favourited and prompt the user that it has been done
    redirect_to tool.bag, notice: 'Tool destroyed.'
  end

  def index
    @tools = Tool.all
  end

  def new
    @tool = Tool.new
  end

end
