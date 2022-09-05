class TurboController < ApplicationController

  before_action :find_turbo, only: [:destroy]

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

  def destroy
    @turbo.destroy
    redirect_to turbo_crud_turbo_index_path
  end

  private

  def find_turbo
    @turbo = TurboCrud.find(params[:id])
  end

  def turbo_params
    params.require(:turbo_crud).permit(:name,:email,:addess)
  end
end
