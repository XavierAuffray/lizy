# frozen_string_literal: true

require_relative 'api_lizy'
require 'test/unit'

class TestApiLizy < Test::Unit::TestCase
  def test_simple
    # assert_equal(10, Calculator.new('rue longue vie, 45 Ixelles', 1, '€€', 'Gilles').get_restaurant.size, 'you should have 10 results')
    # assert_equal('Certo', Calculator.new('rue longue vie, 45 Ixelles', 1, '€€', 'Gilles').get_restaurant[0]['name'], 'the closest restaurant should be -Certo-')
    # assert_not_equal([], Calculator.new('rue longue vie, 45 Ixelles', 1, '€€', 'Gilles').get_restaurant[0]['cuisine'].map { |c| c['name'] } & %w(Italian Lebanese Japanese Belgian), "the first restaurant should match Gilles's preferences")
    # assert_equal(true, Calculator.new('Bruxelles', 1, '€€€€', 'Gilles').get_restaurant[0]['price_level'].split('-').map { |pl| pl.delete(' ') }.include?('$$$$'), "the first result should match the budget requested")
    # assert_equal(10, Calculator.new('rue longue vie, 45 Ixelles', 1, '€€', 'Gilles').get_restaurant.each { |restaurant| !restaurant['name'].nil? || !restaurant['name'] == '' }.size, 'all restaurants should have a name')
    assert_equal(10, Calculator.new('rue longue vie, 45 Ixelles', 1, '€€', 'Gilles').get_restaurant.each { |restaurant| !restaurant['name'].nil? || !restaurant['price_level'] == '' }.size, 'all restaurants should have a price_level')
  end
end
