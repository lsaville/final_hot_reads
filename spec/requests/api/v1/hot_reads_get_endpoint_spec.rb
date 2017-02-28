require 'rails_helper'

describe 'hotreads get endpoint' do
  context 'GET to /api/v1/hotreads' do
    it 'returns the hottest reads of the past 24 hours' do
      FactoryGirl.create_list(:read, 3, url: 'bahh')
      FactoryGirl.create_list(:read, 2, url: 'zoom')
      FactoryGirl.create(:read, url: 'bang')
      FactoryGirl.create(:read, url: 'pluck')
      FactoryGirl.create(:read, url: 'zing')
      FactoryGirl.create(:read, url: 'plop')
      FactoryGirl.create(:read, url: 'zang')
      FactoryGirl.create(:read, url: 'wowowow')
      FactoryGirl.create(:read, url: 'yuck')
      FactoryGirl.create(:read, url: 'bangarang')
      FactoryGirl.create_list(:read, 3, url: 'boom', created_at: Date.today - 3.days )

      get '/api/v1/hotreads'

      parsed_response = JSON.parse(response.body)
      expect(parsed_response.length).to eq(10)
      expect(parsed_response.first['url']).to eq('bahh')
    end
  end
end
