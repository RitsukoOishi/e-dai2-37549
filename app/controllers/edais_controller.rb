class EdaisController < ApplicationController
  before_action :set_edai, only: [:edit, :update, :destroy]
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
  def edit
  end
  def update
    if @edai.update(edai_params)
      redirect_to root_path(@edai)
    else
      render :edit
    end
  end
  def destroy
    @edai.destroy
      redirect_to root_path
  end
  private
  def edai_params
    params.require(:edai).permit(:balance_id, :entry_day, :genre_id, :my_description_id, :price)
  end
  def set_edai
    @edai = Edai.find(params[:id])
  end
end
