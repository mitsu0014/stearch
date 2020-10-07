class LikesController < ApplicationController
    def create
      like = current_user.likes.build(performance_id: params[:performance_id])
      like.save
      redirect_to performances_path
    end

    def destroy
      like = Like.find_by(performance_id: params[:performance_id], user_id: current_user.id)
      like.destroy
      redirect_to performances_path
    end
end
