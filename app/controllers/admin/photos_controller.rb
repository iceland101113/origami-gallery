class Admin::PhotosController < ApplicationController
  before_action :authenticate_user!
  
  def index
    @small_items = SmallItem.page(params[:page]).per(3)
    @big_items = BigItem.page(params[:page]).per(5)
  end
end
