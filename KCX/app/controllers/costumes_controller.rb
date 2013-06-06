class CostumesController < ApplicationController

  def index
    @costumes = Costume.all
  end

  def show
    @costume = Costume.find_by_id(params[:id])
  end

  def new
    if session["user_id"].blank?
      redirect_to "/costumes", notice: "Please sign in first."
    end
  end

  def create
    @costume = Costume.new
    @costume.name = params[:name]
    @costume.description = params[:description]
    @costume.price = params[:price]
    @costume.currency = params[:currency]
    @costume.theme_id = params[:theme_id]
    @costume.user_id = session["user_id"]
    if @costume.save
      redirect_to costumes_url
    else
      render 'new'
    end
  end

  def filter
    search_term = params["term"]
    @costumes = Costume.where("name LIKE ?", "%#{search_term}%")
    render 'index'
  end

  def edit
    @costume = Costume.find_by_id(params["id"])
  end

  def update
    @costume = Costume.find_by_id(params["id"])
    @costume.price = params[:price]
    @costume.currency = params[:currency]
    @costume.name = params[:name]
    @costume.description = params[:description]
    @costume.save
      redirect_to costumes_url
  end

  def destroy
    @costume = Costume.find_by_id(params[:id])
    @costume.destroy
    redirect_to costumes_url
  end
end
