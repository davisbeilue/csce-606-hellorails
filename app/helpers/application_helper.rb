module ApplicationHelper
  # source: http://railscasts.com/episodes/228-sortable-table-columns?view=asciicast
  def sortable(column, title = nil)
    css_class = column == sort_column ? "current #{sort_direction}" : nil
    # if already ascending, we want to switch to descending, and vice-versa
    direction = column == sort_column && sort_direction == "asc" ? "desc" : "asc"
    # css_class allows us to use current tag so that our css styling applies to the current section only
    link_to title, {sort: column, direction: direction}, {class: css_class}
  end
end
