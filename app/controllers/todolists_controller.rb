class TodolistsController < ApplicationController
  def new
    @list = List.new
  end

  def create
    @list = List.new(list_params)
    if @list.save
      redirect_to "/homes/top"
    else
      render :new
    end
  end

  def index
    @lists = List.all
  end

  def show
  end

  def edit
  end

  private
  def list_params
    params.require(:list).permit(:title, :body, :image)
  end

end
