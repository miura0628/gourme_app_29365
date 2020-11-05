class AddressesController < ApplicationController
  def index
    @addresses = Address.order("created_at DESC") 
  end
end
