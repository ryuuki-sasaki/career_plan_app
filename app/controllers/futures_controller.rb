class FuturesController < ApplicationController
  def create
    @future = Future.new(params.require(:future).permit(:future_image))
    if @future.save
      render json: @future, status: :created
    else
      render json: @future.errors, status: :unprocessable_entity
    end
  end
end
