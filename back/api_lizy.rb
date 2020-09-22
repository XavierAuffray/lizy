# frozen_string_literal: true

require 'sinatra'
require 'sinatra/cross_origin'
require 'json'
require_relative 'calculator'

configure do
  enable :cross_origin
end

before do
  response.headers['Access-Control-Allow-Origin'] = '*'
end

# ROUTES ...

options '*' do
  response.headers['Allow'] = 'GET, PUT, POST, DELETE, OPTIONS'
  response.headers['Access-Control-Allow-Headers'] = 'Authorization, Content-Type, Accept, X-User-Email, X-Auth-Token'
  response.headers['Access-Control-Allow-Origin'] = '*'
  200
end

post '/api_lizy' do
  p params = JSON(request.body.read.to_s)
  localisation = params['localisation']
  max_distance = params['max_distance']
  who = params['who']
  price_range = params['price_range']
  { result: Calculator.new(localisation, max_distance, price_range, who).get_restaurant }.to_json
end
