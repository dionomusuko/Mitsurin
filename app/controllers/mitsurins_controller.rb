class MitsurinsController < ApplicationController
  def index
    @mitsurins = List.all
  end
  def show
    @mitsurin = List.find(params[:id])
  end
  def search
    @mitsurins = List.where(name: params[:keyword]).or(List.where(janru: params[:keyword]))
    render "index"
  end
  def destroy

  end
  def new

  end
  def create

  end
  def edit

  end
  def update

  end

end
