class Api::V1::ReadsController < ActionController::API
  def create
    read = Read.new(url: params['read'])
    read.save
  end
end
