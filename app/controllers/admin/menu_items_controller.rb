class Admin::MenuItemsController < Admin::AdminController
  def new
    @item = MenuItem.new
  end

  def create
    @item = MenuItem.new(menu_params)
    if @item.save
      redirect_to admin_menu_items_path
      flash[:notice] = "Item added successfully."
    else
      redirect_to :back
      flash[:error] = "Failed to add item."
    end
  end

  def index
    @menu = MenuItem.all.order(:category, :name)
  end

  def edit
    @item = MenuItem.find(params[:id])
  end

  def update
    @item = MenuItem.find(params[:id])
    @item.update_attributes(menu_params)
    redirect_to admin_menu_items_path
    flash[:notice] = "Item updated."
  end

  def destroy
    @item = MenuItem.find(params[:id])
    @item.destroy
    redirect_to admin_menu_items_path
    flash[:notice] = "Item deleted."
  end

  private
  def menu_params
    params.require(:menu_item).permit(
      :name,
      :description,
      :price,
      :serving_size,
      :category,
      :subcategory
    )
  end
end
