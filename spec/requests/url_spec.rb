require 'rails_helper'
require 'json'
RSpec.describe 'Urls API', type: :request do
  # initialize test data 
 
   describe 'GET /url' do
    before { get '/url' }

    it 'responds with JSON' do
	parse_json = JSON(response.body)
parse_json["success"].should == true
#	parse_json = JSON.parse(response.body)
     #parse_json["success"].should == true
 #    expect(parse_json).not_to be_empty

	 puts parse_json
	# expect(parse_json.length).to eq(1)
    end

    it 'returns status code 200' do
      expect(response).to have_http_status(200)
    end
  end
  
  
  end