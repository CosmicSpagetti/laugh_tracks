class ComediansController < ApplicationController

  def create
    comedians = Comedian.new(comedians_params)
    comedians.save
    redirect_to '/comedians'
  end

  def new

  end

  def index
    if params[:age]
      @comedians = Comedian.find_all_by_age(params[:age])
    else
      @comedians = Comedian.all
    end
  end

  private
  
  def comedians_params
    params.require(:comedian).permit(:name, :age, :birthplace)
  end

end
