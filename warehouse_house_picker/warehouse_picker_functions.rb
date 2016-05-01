require( "pry-byebug" )

WAREHOUSE = [
      {:a10 => "rubberband"},
      {:a9 => "glow stick"},
      {:a8 => "model car"},
      {:a7 => "bookmark"},
      {:a6 => "shovel"},
      {:a5 => "rubber duck"},
      {:a4 => "hanger"},
      {:a3 => "blouse"},
      {:a2 => "stop sign"},
      {:a1 => "needle"},
      {:c1 => "rusty nail"},
      {:c2 => "drill press"},
      {:c3 => "chalk"},
      {:c4 => "word search"},
      {:c5 => "thermometer"},
      {:c6 => "face wash"},
      {:c7 => "paint brush"},
      {:c8 => "candy wrapper"},
      {:c9 => "shoe lace"},
      {:c10 => "leg warmers"},
      {:b1 => "tire swing"},
      {:b2 => "sharpie"},
      {:b3 => "picture frame"},
      {:b4 => "photo album"},
      {:b5 => "nail filer"},
      {:b6 => "toothpaste"},
      {:b7 => "bath fizzers"},
      {:b8 => "tissue box"},
      {:b9 => "deodorant"},
      {:b10 => "cookie jar"}
    ]

#searches warehouse iventory by shelf location for and returns an index and an item.
def search_by_shelf(shelf)
  index = 0
  while index < WAREHOUSE.length
    if WAREHOUSE[index][shelf] != nil
      return [index, WAREHOUSE[index][shelf]]
    end
    index += 1
  end
end
#My Original answer for question 1 without location index.
    # def search_by_shelf(bay)
    #   WAREHOUSE[bay]
    # end

#searches warehouse iventory by item and returns an index and shelf location.
    def search_by_item(item)
      index = 0
      while index < WAREHOUSE.length
        if WAREHOUSE[index].key(item) != nil
          return [index, WAREHOUSE[index].key(item)]
        end
        index += 1
      end
    end

#My Original answer for question 2 without location index.
    # def search_by_item(item)
    #   WAREHOUSE.key(item)
    # end

#searches warehouse iventory by an array of shelf locations and returns the list of items and the distance in a hash.
    def search_by_list_of_shelves(list_of_shelves)

      items_location = []
      locations = []
      items = []

      for shelf in list_of_shelves
        items_location.push(search_by_shelf(shelf))
      end
      for item in items_location
        locations.push(item[0])
        items.push(item[1])
      end

      return {items => (locations.max - locations.min)}

    end

#searches warehouse iventory by an array of items and returns the list of shelves in the correct order of the warehouse.
    def search_by_list_of_items(list_of_items)
      shelf_locations = []
      shelves = []

        for item in list_of_items
          shelf_locations.push(search_by_item(item))
        end
        for shelf in shelf_locations.sort
#sorting array by index within shelf_locations.
          shelves.push(shelf[1])
        end
        return shelves
    end
nil
