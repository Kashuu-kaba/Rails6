class TodolistsController < ApplicationController
  def new
    @list = List.new
  end

  def create
    @list = List.new(list_params)
    if @list.save
      redirect_to todolists_path, notice: "List was created successufly!"
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

  def destroy
  end

  def destroy_all
    @lists = List.all
    if @lists.destroy_all
      redirect_to root_path
    else
      render :index
    end
  end

  private
  def list_params
    params.require(:list).permit(:title, :body, :image)
  end

end
