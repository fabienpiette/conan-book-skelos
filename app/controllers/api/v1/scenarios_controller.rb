# frozen_string_literal: true

class Api::V1::ScenariosController < ApiController
  def index
    render json: Scenario.all
  end

  def show
    render json: Scenario.find(permitted_params[:id])
  end

  protected

  def permitted_params
    params.permit(:id)
  end
end
