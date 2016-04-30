require 'minitest/autorun'
require_relative '../warehouse_picker_functions.rb'
require( "pry-byebug" )

class TestWarehouse < Minitest::Test

  def test_search_by_shelf
    item = search_by_shelf(:b5)
    assert_equal('nail filer', item)
  end

  def test_search_by_item
    shelf = search_by_item('nail filer')
    assert_equal(:b5, shelf)
  end
  #
  def test_search_by_list_of_shelves
    list_of_shelves = search_by_list_of_shelves([:b5, :b10, :b6])
    assert_equal(["nail filer", "cookie jar", "toothpaste"], list_of_shelves)
  end

  def test_search_by_list_of_items
    list_of_items = search_by_list_of_items(["rusty nail", "shoe lace", "leg warmers"])
    assert_equal([:c1, :c9, :c10], list_of_items)
  end

end


nil
