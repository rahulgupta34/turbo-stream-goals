class TurboController < ApplicationController
  def index
  end

  def turbo_crud
    @turbos = TurboCrud.all
  end

  def create
   
    @turbo = TurboCrud.new(name:params[:name],email:params[:email],addess:params[:addess])
    if @turbo.save
      redirect_to turbo_crud_turbo_index_path
    else
      render :turbo_crud
    end
  end

  private
  def turbo_params
    params.require(:turbo_crud).permit(:name,:email,:addess)
  end
end
