require 'minitest/autorun'
require 'minitest/pride'
require './lib/patron'

class PatronTest < Minitest::Test

  def test_it_exists
    patron_1 = Patron.new("Bob", 20)

    assert_instance_of Exhibit, exhibit
  end

end
