class ServicesController < ApplicationController
  def index
    @services = Service.all
  end

  def new
  end

  def create
    Service.create services_params
    redirect_to services_path, notice: "Service created."
  end

  def destroy
    Service.find(params[:id]).destroy
    redirect_to services_path, notice: "Service deleted."
  end

  private
  def services_params
    params.permit :name, :protocol, :address_format, :arg1, :arg2
  end
end
