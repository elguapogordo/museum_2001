require 'minitest/autorun'
require 'minitest/pride'
require './lib/exhibit'

class ExhibitTest < Minitest::Test

  def test_it_exists
    exhibit = Exhibit.new

    assert_instance of Exhibit, exhibit
  end
  
end
