module ApplicationHelper
  # source: http://railscasts.com/episodes/228-sortable-table-columns?view=asciicast
  def sortable(column, movie_prop = nil)
    selectable_class = column == sort_column ? "selected #{sort_direction}" : nil
    # if already ascending, we want to switch to descending, and vice-versa
    direction = column == sort_column && sort_direction == "asc" ? "desc" : "asc"
    # selectable_class allows us to use selected tag so that our css styling applies to the selected section only
    link_to movie_prop, {sort: column, direction: direction}, {class: selectable_class}
  end
end
