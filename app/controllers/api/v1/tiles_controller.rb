# frozen_string_literal: true

class Api::V1::TilesController < ApiController
  def index
    render json: Tile.all
  end

  def show
    render json: Tile.find(permitted_params[:id])
  end

  protected

  def permitted_params
    params.permit(:id)
  end
end
