require 'spec_helper'
require 'rack/test'
require_relative '../../app'

describe Application do
    include Rack::Test::Methods

    let(:app) { Application.new }

    # GET /
    context 'GET /' do
        it 'returns 200 ok' do
            response = get('/')
            # response = post('/', name: 'Verity', cohort_name: 'April') # would send post request with parameters

            expect(response.status).to be(200)
            expect(response.body). to eq('Hello!')
        end

    end
end