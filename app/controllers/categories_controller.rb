class CategoriesController < ApplicationController
  def index
  end

  def show
    @category_list = Service.where("category =?", params[:id])
    # .find_by_key(params[:id])
  end
end
