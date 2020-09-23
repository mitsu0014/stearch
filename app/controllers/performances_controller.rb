class PerformancesController < ApplicationController
before_action :search_stage, only: [:index, :search]
before_action :set_performance, only: [:show, :edit]

  def index
    @performances = Performance.all
  end

  def search
    @results = @p.result(distinct: true)
  end

  def new
    @performance = Performance.new
  end

  def create
    @performance = Performance.new(performance_params)
    if @performance.save
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
  end

  def destroy
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
    params.require(:performance).permit(:image, :title, :group, :genre_id, :area_id, :price1, :price2, :price3, :price4, :price5, :start_date, :end_date, :start_at, :url).merge(user_id: current_user.id)
  end

end
