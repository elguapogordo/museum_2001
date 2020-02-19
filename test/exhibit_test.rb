require 'minitest/autorun'
require 'minitest/pride'
require './lib/exhibit'
require './lib/patron'

class ExhibitTest < Minitest::Test

  def test_it_exists
    exhibit = Exhibit.new({name: "Gems and Minerals", cost: 0})

    assert_instance_of Exhibit, exhibit
  end

  def test_it_returns_name
    exhibit = Exhibit.new({name: "Gems and Minerals", cost: 0})

    assert_equal "Gems and Minerals", exhibit.name
  end
  
end
