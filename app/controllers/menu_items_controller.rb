class MenuItemsController < ApplicationController
  def new
  end

  def edit
  end

  def index
    @menu = MenuItem.all
    @appetizers = MenuItem.where(category: "appetizer")
    @mains = MenuItem.where(category: "main")
    @desserts = MenuItem.where(category: "dessert")
    @alcohols = MenuItem.where(category: "alcohol")
    @beverages = MenuItem.where(category: "beverage")
  end
end
