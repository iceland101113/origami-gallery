module Admin
  class Photos::BigItemsController < ApplicationController
    before_action :authenticate_user!
    before_action :set_item, :only => [:show, :edit, :update, :destroy]
    
    def new
      @item = BigItem.new
    end

    def create
      @item = BigItem.new(item_params)
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
      @item = BigItem.find(params[:id])
    end

    def item_params
      params.require(:big_item).permit(:name, :description, :file_location)
    end
  end
end
