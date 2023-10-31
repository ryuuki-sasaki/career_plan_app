class FuturesController < ApplicationController
  def create
    @future = Future.new(future_params)
    if @future.save
      render json: @future, status: :created
    else
      render json: @future.errors, status: :unprocessable_entity
    end
  end

  private
    def future_params
      params.require(:future).permit(:future_image)
    end
end
