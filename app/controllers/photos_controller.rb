class PhotosController < ApplicationController
  before_action :set_photo, :only => [:show, :like]

  def index
    @small_items = SmallItem.all
    @big_items = BigItem.all
  end
end
