class ItemController < ApplicationController
  def index
  end
  
  def show
  	@items = Item.find(params[:id])
  end
end
