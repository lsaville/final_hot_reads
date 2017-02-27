
require 'rails_helper'

describe 'POST to /api/v1/reads' do
  it 'exists' do
    data = { read: "http://www.google.com"}

    read_count = Read.count

    post "/api/v1/reads", data.to_json

    expect(response).to be_success
    expect(Read.count).to eq(read_count + 1)
  end
end
