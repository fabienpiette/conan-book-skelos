# frozen_string_literal: true

class Api::V1::TilesController < ApiController
  #
  # FetcheableOnApi
  #
  sort_by :id
  filter_by :name

  def index
    render json: apply_fetcheable(Tile.all)
  end

  def show
    render json: Tile.find(permitted_params[:id])
  end

  protected

  def permitted_params
    params.permit(:id)
  end
end
