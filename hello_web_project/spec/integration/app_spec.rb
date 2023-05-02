require 'spec_helper'
require 'rack/test'
require_relative '../../app'

describe Application do
    include Rack::Test::Methods

    let(:app) { Application.new }

    context 'GET /hello' do
        it 'should return "Hello Verity"' do
            response = get('/hello?name=Verity')

            expect(response.status).to eq(200)
            expect(response.body).to eq('Hello Verity')
        end

        it 'should return "Hello Josh"' do
            response = get('/hello?name=Josh')

            expect(response.status).to eq(200)
            expect(response.body).to eq('Hello Josh')
        end
    end
end