class ApplicationController < ActionController::Base
  def search
    @mitsurins = List.where(name: params[:keyword]) #.or(List.where(janru: params[:keyword]))
    render 'index'
  end
  def about

  end
end
