# frozen_string_literal: true

require 'uri'
require 'net/http'
require 'openssl'
require 'geocoder'

PREFERENCES = {
  Gilles: %w(Italian Lebanese Japanese Belgian),
  Vince: %w(Italian Japanese Lebanese),
  Sam: %w(Belgian),
  Klaas: %w(Japanese Belgian),
  Gaelle: %w(Japanese Lebanese)
}.freeze

class Calculator
  def initialize(address, max_distance, price_range, who)
    @address = address
    @max_distance = max_distance
    @price_range = price_range
    @who = who
  end

  def get_restaurant
    url = URI("https://tripadvisor1.p.rapidapi.com/restaurants/list-by-latlng?limit=30&currency=EUR&distance=#{@max_distance}&lunit=km&lang=en_US&latitude=#{latitude}&longitude=#{longitude}")
    http = Net::HTTP.new(url.host, url.port)
    http.use_ssl = true
    http.verify_mode = OpenSSL::SSL::VERIFY_NONE
    request = Net::HTTP::Get.new(url)
    request['x-rapidapi-host'] = 'tripadvisor1.p.rapidapi.com'
    request['x-rapidapi-key'] = '92f3d582abmshfa159eca78ae473p1fc225jsne6c0f4741c57'
    response = http.request(request)
    result = []
    JSON.parse(response.read_body)['data'].each do |restaurant|
      result << restaurant if restaurant_has_a_name?(restaurant) && restaurant_has_a_price_level?(restaurant) && check_price_level?(restaurant)
    end
    sort_by_preferences(result)
    result.slice!(10..-1)
    be_sure_to_get_10_results(result, response)
    result
  end

  private

  def be_sure_to_get_10_results(result, response)
    z = -1
    while result.size < 10
      result << JSON.parse(response.read_body)['data'][z]
      z -= 1
    end
  end

  def sort_by_preferences(result)
    result.each_with_index.map do |restaurant, index|
      if PREFERENCES[@who.to_sym] & restaurant['cuisine'].map { |c| c['name'] } != []
        to_put_at_the_top_of_the_list = result.delete_at(index)
        result.insert(0, to_put_at_the_top_of_the_list)
      end
    end
    result
  end

  def restaurant_has_a_name?(restaurant)
    !restaurant['name'].nil?
  end

  def restaurant_has_a_price_level?(restaurant)
    !restaurant['price_level'].nil?
  end

  def check_price_level?(restaurant)
    restaurant['price_level'].split('-').map { |pl| pl.delete(' ') }.include?(@price_range)
  end

  def coordinates
    results = Geocoder.search(@address)
    results.first.coordinates
  end

  def latitude
    coordinates[0]
  end

  def longitude
    coordinates[1]
  end
end
