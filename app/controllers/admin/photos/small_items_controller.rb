module Admin
  class Photos::SmallItemsController < ApplicationController
    before_action :authenticate_user!
    before_action :set_item, :only => [:show, :edit, :update, :destroy]
    
    def new
      @item = SmallItem.new
    end

    def create
      @item = SmallItem.new(item_params)
      if @item.save
        redirect_to admin_photos_path
      else
        render :action => :new
      end
    end

    def update
      if @item.update(item_params)
        redirect_to admin_photos_path
      else
        render :action => :edit
      end
    end

    def destroy
      @item.destroy

      redirect_to admin_photos_path
    end

    private

    def set_item
      @item = SmallItem.find(params[:id])
    end

    def item_params
      params.require(:small_item).permit(:name, :description, :file_location)
    end
  end
end
