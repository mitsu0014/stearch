# frozen_string_literal: true

class PerformancesController < ApplicationController
  before_action :search_stage, only: %i[index search]
  before_action :set_performance, only: %i[show edit update destroy]

  def index
    @performances = Performance.all
  end

  def search
    @results = @p.result(distinct: true)
    @results = Performance.all.page(params[:page]).per(5)
  end

  def new
    @performance = Performance.new
  end

  def create
    @performance = Performance.new(performance_params)
    if @performance.valid?
      @performance.save
      redirect_to "/users/#{current_user.id}"
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    @performance.update(performance_params)
    if @performance.valid?
      redirect_to performance_path(@performance.id)
    else
      render :edit
    end
  end

  def destroy
    if @performance.destroy
      redirect_to "/users/#{current_user.id}"
    else
      render :index
    end
  end

  def privacy
  end

  private

  def set_performance
    @performance = Performance.find(params[:id])
  end

  def search_stage
    @p = Performance.ransack(params[:q])
    @genre = Genre.where.not(id: 1)
    @area = Area.where.not(id: 1)
  end

  def performance_params
    params.require(:performance).permit(:image, :title, :group, :genre_id, :area_id, :price1, :price2, :price3, :price4, :price5, :start_date, :end_date, :start_at, :url, :infomation, :theatre, :address).merge(user_id: current_user.id)
  end
end
