class MitsurinsController < ApplicationController
  def index
    @mitsurins = List.all
  end
  def show
    @mitsurin = List.find(params[:id])
  end

  def destroy
    mitsurin = List.find(params[:id])
    mitsurin.destroy
    redirect_to '/'
  end
  def new
  @mitsurin = List.new
  end
  def create
  @mitsurin = List.new(name: params[:list][:name], janru: params[:list][:janru], coment: params[:list][:coment], price: params[:list][:price], icon: params[:list][:icon].read)
    if @mitsurin.save
    flash[:notice] = 'レコードを追加しました！'
    redirect_to '/'
    else
    render 'new'
    end
  end
  def edit
  @mitsurin = List.find(params[:id])
  end
  def update
  mitsurin = List.find(params[:id])
  mitsurin.update(name: params[:list][:name], janru: params[:list][:janru], coment: params[:list][:coment], price: params[:list][:price], icon: params[:list][:icon].read)
    if mitsurin.save
    flash[:notice] =  'レコードを変更しました！'
    redirect_to '/'
    else
    render 'edit'
    end
  end
  def get_image
    mitsurin = List.find(params[:id])
    send_data mitsurin.icon, disposition: :inline, type: 'mitsurin/png'
  end
  def purchase
    @mitsurin = List.find(params[:id])
  end
end
