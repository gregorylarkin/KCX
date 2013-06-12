class ThemesController < ApplicationController

  def index
    @themes = Theme.all
  end

  def show
    @theme = Theme.find_by_id(params[:id])
  end

  def new
    if session["user_id"].blank?
      redirect_to "/themes", notice: "Please sign in first."
    end
  end

  def create
    @theme = Theme.new
    @theme.name = params[:name]

    if @theme.save
      redirect_to themes_url
    else
      render 'new'
    end
  end

  def edit
    if session["user_id"].blank?
      redirect_to "/themes", notice: "Must sign in to edit themes."
    end
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
    if session["user_id"].blank?
      redirect_to "/themes", notice: "Must sign in to destroy themes."
    else
    @theme = Theme.find_by_id(params[:id])
    @theme.destroy
    redirect_to themes_url
    end
  end
end
