# frozen_string_literal: true

class ApiController < ActionController::API
  rescue_from ActiveRecord::RecordNotFound do |_e|
    render_errors('Record Not Found', :not_found)
  end

  protected

  def render_errors(object, status = :unprocessable_entity)
    error = if object.is_a?(String)
              { errors: object }
            else
              { errors: object.errors }
            end

    render json: error, status: status
  end
end
