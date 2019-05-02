class ComediansController < ApplicationController

  def index
    if params[:age]
      @comedians = Comedian.show_by_age(params[:age])
    else
      @comedians = Comedian.all
    end
  end

end
