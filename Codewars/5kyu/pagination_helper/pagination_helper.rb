class PaginationHelper
  def initialize(collection, items_per_page)
      @collection = collection
      @items_per_page = items_per_page
  end
  def item_count
    return @collection.length
  end
  def page_count
    return ((item_count/@items_per_page) + 1)
  end
  def page_item_count(page_index)
    if item_count < @items_per_page
      return item_count
    elsif page_index == page_count-1
      return item_count % @items_per_page
    elsif page_index >= page_count
      return -1
    else
      return @items_per_page
    end
  end
  def page_index(item_index)
    if item_index > item_count-1
      return -1
    elsif item_index < 0
      return -1
    else
      return item_index / @items_per_page
    end
  end
end
