module ApplicationHelper
  def toggle_direction(current_direction)
    current_direction == "asc" ? "desc" : "asc"
  end

  def arrow(current_sort, column, current_direction)
    return unless current_sort == column
    current_direction == "asc" ? "⬇️" : "⬆️"
  end
end
