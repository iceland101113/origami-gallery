class Admin::PhotosController < ApplicationController
  before_action :authenticate_user!
  
  def index
    @small_items = SmallItem.page(params[:page]).per(10)
    @big_items = BigItem.page(params[:page]).per(10)
  end
end
