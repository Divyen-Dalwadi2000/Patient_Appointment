class PhysiciansController < ApplicationController
  def index
    @physicians = Physician.all
  end

  def show
    @physician = Physician.find(params[:id])
  end

  def new
    @physician = Physician.new
  end

  def create
    @physician = Physician.create(physician_params)
    if @physician.save
      redirect_to @physician
    end 
  end

  def edit
    @physician = Physician.find(params[:id])
  end

  def update
  @physician = Physician.find(params[:id])
    if @physician.update(physician_params) 
     redirect_to @physician
    end
  end

  def destroy
    @physician = Physician.find(params[:id])
    @physician.destroy 

    redirect_to @physician
  end 
  
  def physician_params
  params.require(:physician).permit(:name)  
  end
end
