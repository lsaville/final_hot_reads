class Api::V1::CurrentHotreadsController < ActionController::API
  def index
    render json: Read.hot_reads
  end
end
