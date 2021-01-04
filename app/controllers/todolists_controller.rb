class TodolistsController < ApplicationController
  def new
    @list = List.new
  end
  def create
    #データを新規作成するためのインスタンス作成
    list = List.new(list_params)
    #DBに保存するためのsaveメソッド
    list.save
    #トップ画面からのリダイレクト
    redirect_to todolist_path(list.id)
  end

  def index
    @lists = List.all
  end

  def show
    @list = List.find(params[:id])
  end

  def edit 
    @list = List.find(params[:id])
  end

  def update
    list = List.find(params[:id])
    list.update(list_params)
    redirect_to todolist_path(list.id)
  end

  private
  def list_params
    params.require(:list).permit(:title, :body)
  end

end