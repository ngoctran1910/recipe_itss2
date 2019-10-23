class HomepageController < ApplicationController
  def index
    page = params[:page] ? params[:page] : 1
    @recipes = Recipe.all.page page
    render "template/home"
  end

  def single
    render "template/single-post"
  end

  def category_post
    render "template/catagory-post"
  end

  def category
    render "template/catagory"
  end

  def contact
    render "template/contact"
  end

  def recipe
    render "template/receipe"
  end
end
