class ThemesController < ApplicationController

  def index
    @themes = Theme.all
  end

  def show
    @theme = Theme.find_by_id(params[:id])
  end

  def new
    @theme = Theme.new
  end

  def create
    @theme = Theme.new
    
    if @theme.save
      redirect_to themes_url
    else
      render 'new'
    end
  end

  def edit
    @theme = Theme.find_by_id(params[:id])
  end

  def update
    @theme = Theme.find_by_id(params[:id])
    @theme.name = params[:name]
        if @theme.save
      redirect_to themes_url
    else
      render 'new'
    end
  end

  def destroy
    @theme = Theme.find_by_id(params[:id])
    @theme.destroy
    redirect_to themes_url
  end
end
