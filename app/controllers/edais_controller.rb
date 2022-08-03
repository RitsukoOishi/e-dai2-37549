class EdaisController < ApplicationController
  def index
    @edais = Edai.order(entry_day: "ASC")
    @edai_sum_balance = Edai.group(:balance_id).sum(:price)
    @edai_sum = Edai.group(:genre_id).sum(:price)
    @edai_sum_description = Edai.group(:my_description_id).sum(:price)
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
    params.require(:edai).permit(:balance_id, :entry_day, :genre_id, :my_description_id, :price)
  end
end
