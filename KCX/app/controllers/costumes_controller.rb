class CostumesController < ApplicationController

  def index
    @costumes = Costume.all
  end

  def show
    @costume = Costume.find_by_id(params[:id])
  end

  def new
    @costume = Costume.new
  end

  def create
    @costume = Costume.new
    @costume.name = params[:name]
    @costume.description = params[:description]
    @costume.price = params[:price]
    @costume.currency = params[:currency]

    if @costume.save
      redirect_to costumes_url
    else
      render 'new'
    end
  end

  def edit
    @costume = Costume.find_by_id(params[:id])
  end

  def update
    @costume = Costume.find_by_id(params[:id])
    @costume.save
      redirect_to costumes_url
  end

  def destroy
    @costume = Costume.find_by_id(params[:id])
    @costume.destroy
    redirect_to costumes_url
  end
end
