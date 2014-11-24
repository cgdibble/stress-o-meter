class StressersController < ApplicationController
  def index
    @stressers = Stresser.all.order(point_value: :desc)
    @stresser = Stresser.new
  end

  def create
    @stresser = Stresser.create(stresser_params)

    redirect_to stressers_path
  end

  def edit
    @stresser = Stresser.find(params[:id])
  end

  def update
    @stresser = Stresser.find(params[:id])
    if @stresser.update(stresser_params)
      redirect_to stressers_path
    else
      render 'edit'
    end
  end

  def destroy
    stresser = Stresser.find(params[:id])
    stresser.destroy
    redirect_to stressers_path
  end

  def show
    redirect_to stressers_path
  end

  def stresser_params
    params.require(:stresser).permit(:description, :point_value)
  end

end
