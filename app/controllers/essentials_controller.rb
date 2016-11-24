class EssentialsController < ApplicationController
  def create
    tool = Tool.find params[:tool_id]
    essential = current_user.essentials.new
    essential.tool = tool
    if essential.save
      redirect_to tool, notice: "Essentialed!"
    else
      rerdirect_to tool, alert: "Not essentialed! It may be already essential."
    end
  end

  def destroy
    essential = current_user.essential.find params[:id]
    essential.destroy
    redirect_to essential.tool, notice: 'Un-essentialed'
  end

end
