class MenuItemsController < ApplicationController
  def new
  end

  def edit
  end

  def index
    @menu = MenuItem.all
    @monday = MenuItem.find_by(subcategory: "monday")
    @tuesday = MenuItem.find_by(subcategory: "tuesday")
    @wednesday = MenuItem.find_by(subcategory: "wednesday")
    @thursday = MenuItem.find_by(subcategory: "thursday")
    @friday = MenuItem.find_by(subcategory: "friday")
    @saturday = MenuItem.find_by(subcategory: "saturday")
    @sunday = MenuItem.find_by(subcategory: "sunday")
    @buckets = MenuItem.where(category: "special", subcategory: "bucket")
    @appetizers = MenuItem.where(category: "appetizer")
    @mains = MenuItem.where(category: "main")
    @extras = MenuItem.where(category: "extra")
    @alcohols = MenuItem.where(category: "alcohol").where.not(subcategory: "bomb").order(subcategory: "DESC")
    @bombs = MenuItem.where(category: "alcohol", subcategory: "bomb")
    @beverages = MenuItem.where(category: "beverage")
  end
end
