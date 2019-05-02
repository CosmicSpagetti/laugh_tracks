class ComediansController < ApplicationController

  def create

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

end
