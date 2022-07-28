class EdaisController < ApplicationController
  def index
    @edais = Edai.all
  end
  
  def new
    @edai = Edai.new
  end

  def create
    @edai = Edai.new(edai_params)
    if @edai.save
      redirect_to root_path
    else
      render :new
    end

  end

  private
  def edai_params
    params.require(:edai).permit(:balance_id, :gregorian, :genre_id, :description, :price, :user_id)
  end
end
