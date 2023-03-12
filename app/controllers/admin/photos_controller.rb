class Admin::PhotosController < ApplicationController
  before_action :authenticate_user!
  
  def index
    @small_items = SmallItem.order(updated_at: :desc).page(params[:page]).per(10)
    @big_items = BigItem.order(updated_at: :desc).page(params[:page]).per(10)
  end
end
