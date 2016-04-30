require( "pry-byebug" )

    def search_by_shelf(bay)
      WAREHOUSE[bay]
    end

    def search_by_item(item)
      WAREHOUSE.key(item)
    end

    def search_by_list_of_shelves(list_of_shelves)
    list_of_items = []
      for shelf in list_of_shelves
        list_of_items.push(search_by_shelf(shelf))
      end
      return list_of_items
    end

    def search_by_list_of_items(list_of_items)
      list_of_shelves = []
        for items in list_of_items
          list_of_shelves.push(search_by_item(items))
        end
        return list_of_shelves
    end




nil
