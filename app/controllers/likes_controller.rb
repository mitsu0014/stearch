# frozen_string_literal: true

class LikesController < ApplicationController
  def create
    like = Like.create(performance_id: params[:performance_id], user_id: current_user.id)
    @performance = Performance.find(params[:performance_id])
  end

  def destroy
    @like = Like.find_by(performance_id: params[:performance_id], user_id: current_user.id)
    @performance = Performance.find(params[:performance_id])
    @like.destroy
  end
end
