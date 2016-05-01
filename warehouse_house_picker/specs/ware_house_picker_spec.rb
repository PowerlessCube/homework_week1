require 'minitest/autorun'
require_relative '../warehouse_picker_functions.rb'
require( "pry-byebug" )
require "minitest/rg"

class TestWarehouse < Minitest::Test

  def test_search_by_shelf
    item = search_by_shelf(:b5)
    assert_equal([24, 'nail filer'], item)
  end

  def test_search_by_item
    shelf = search_by_item('nail filer')
    assert_equal([24, :b5], shelf)
  end

  def test_search_by_list_of_shelves
    list_of_shelves = search_by_list_of_shelves([:b5, :b10, :b6])
    assert_equal({ 5 => ["nail filer", "cookie jar", "toothpaste"] }, list_of_shelves)
  end

  def test_search_by_list_of_items
    list_of_items = search_by_list_of_items(["shoe lace", "rusty nail", "leg warmers"])
    assert_equal([:c1, :c9, :c10], list_of_items)
  end

#given "b3, c7, c9 and a3", determine that the products are "picture frame, paint brush, shoe lace, and blouse", and they're 15 bays apart.)
  def test_search_by_bigger_list_of_shelves
    list_of_shelves = search_by_list_of_shelves([:b3, :c7, :c9, :a3])
    assert_equal({ 15 => ["picture frame", "paint brush", "shoe lace", "blouse"]}, list_of_shelves)
  end

#given "hanger, deodorant, candy wrapper, rubber band", determine that those items need to be collected from "a10, a4, c8, and b9"
  def test_search_by_bigger_list_of_items
    list_of_items = search_by_list_of_items(["hanger", "deodorant", "candy wrapper", "rubberband"])
    assert_equal([:a10, :a4, :c8, :b9], list_of_items)
  end


end


nil
