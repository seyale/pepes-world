class KidsController < ApplicationController

  def new
    @kid = Kid.new
  end

  def create
    @kid = Kid.new(kid_params)
    if @kid.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def kid_params
    params.require(:kid).permit(:name, :photo, :user_id)
  end
end
