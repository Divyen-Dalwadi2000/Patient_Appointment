class SuppliersController < ApplicationController
  def index
    @suppliers = Supplier.all
  end

  def show
    @supplier = Supplier.find(params[:id])
  end

  def new
    @supplier = Supplier.new
  end

  def edit
    @supplier = Supplier.find(supplier_params)
    if @supplier.save
      redirect_to @supplier

    end
  end
end
