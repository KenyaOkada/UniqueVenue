class UniquevenuesController < ApplicationController

  def index
   @uniquevenues = Uniquevenue.all
  end

  def show
    @uniquevenue = Uniquevenue.find(params[:id])
  end

  def new
    @uniquevenue = Uniquevenue.new
  end

  def create
    #render plain: params[:house].inspect
    @uniquevenue = Uniquevenue.new(uniquevenue_params)
    if @uniquevenue.save
      redirect_to uniquevenues_path
    else
     render 'new'
    end
  end

  def edit
    @uniquevenue = Uniquevenue.find(params[:id])
  end

  def update
    @uniquevenue = Uniquevenue.find(params[:id])
    if @uniquevenue.update(uniquevenue_params)
      redirect_to uniquevenues_path
    else
      render 'edit'
    end
  end

  def destroy
    @uniquevenue = Uniquevenue.find(params[:id])
    @uniquevenue.destroy
    redirect_to uniquevenues_path
  end


  private
    def uniquevenue_params
      params.require(:uniquevenue).permit(:uniquevenue_name, :uniquevenue_description, :price, :adress, :parking, :inquiry, :holding_space, :access)
    end

end
