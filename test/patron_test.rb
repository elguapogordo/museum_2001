require 'minitest/autorun'
require 'minitest/pride'
require './lib/patron'

class PatronTest < Minitest::Test

  def test_it_exists
    patron_1 = Patron.new("Bob", 20)

    assert_instance_of Patron, patron_1
  end

  def test_it_returns_name
    patron_1 = Patron.new("Bob", 20)

    assert_equal "Bob", patron_1.name
  end

  def test_it_returns_spending_money
    patron_1 = Patron.new("Bob", 20)

    assert_equal 20, patron_1.spending_money
  end

end
