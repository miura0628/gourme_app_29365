class AddressesController < ApplicationController

  def index
    @address = Address.new
  end

  def show
    @address = Address.find(params[:id])
  end
end
