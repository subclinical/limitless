class MenuItemsController < ApplicationController
  def new
  end

  def edit
  end

  def index
    @menu = MenuItem.all
  end
end
