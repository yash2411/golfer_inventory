class GolfersController < ApplicationController
  def index
    @golfers = Golfer.includes(:dependents).all
  end
  
  def show
    @golfer = Golfer.includes(:dependents).find(params[:id])
    @quarterly_fee = @golfer.calculate_quarterly_fee
  end

  def new
    @golfer = Golfer.new
  end

  def edit
    @golfer = Golfer.includes(:dependents).find(params[:id])
  end

  def create
    @golfer = Golfer.new(golfer_params)
    if @golfer.save
      redirect_to @golfer, notice: 'Golfer was successfully created.'
    else
      render :new
    end
  end

  def update
    @golfer = Golfer.includes(:dependents).find(params[:id])
    if @golfer.update(golfer_params)
      redirect_to @golfer, notice: 'Golfer was successfully created.'
    else
      render :new
    end
  end

  def destroy
    @golfer = Golfer.includes(:dependents).find(params[:id])
    if @golfer.destroy
      redirect_to @golfer, notice: 'Golfer was successfully created.'
    else
      render :new
    end
  end

  private

  def golfer_params
    params.require(:golfer).permit(:name, :email, :mobile, :entry_fee, :membership_category_id, :membership_date, :expiry_date, :membership_code, :is_dependent, :dependent_of)
  end
end
