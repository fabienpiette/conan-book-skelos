# frozen_string_literal: true

class Api::V1::ScenariosController < ApiController
  #
  # FetcheableOnApi
  #
  sort_by :id
  filter_by :name

  def index
    render json: apply_fetcheable(Scenario.all)
  end

  def show
    render json: Scenario.find(permitted_params[:id])
  end

  protected

  def permitted_params
    params.permit(:id)
  end
end
