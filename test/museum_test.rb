require 'minitest/autorun'
require 'minitest/pride'
require './lib/museum'
require './lib/exhibit'
require './lib/patron'

class MuseumTest < Minitest::Test

  def test_it_exists
    dmns = Museum.new("Denver Museum of Nature and Science")

    assert_instance_of Museum, dmns
  end

end
