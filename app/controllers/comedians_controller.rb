class ComediansController < ApplicationController

  def create
    comedians = Comedian.new(comedians_params)

    if comedians.save
      redirect_to '/comedians'
    else
      redirect_to '/comedians/new'
    end
  end

  def new
    @comedians = Comedian.new
  end

  def index
    if params[:age]
      @comedians = Comedian.find_all_by_age(params[:age])
    else
      @comedians = Comedian.all
    end
    @comedians_average_age = Comedian.average_by_age
    @comedians_birthplace = Comedian.city_list
  end


  private

  def comedians_params
    params.require(:comedian).permit(:name, :age, :city)
  end

end
