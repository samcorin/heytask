class CategoriesController < ApplicationController
  # before_action :set_category, only: [ :show ]

  def index
  end

  def show
    @category_list = Service.where("category = ?", params[:category])
    # raise
    # .find_by_key(params[:id])
  end

  private

  # def set_category
  #   @category = Service.find(params[:id])
  # end
end
