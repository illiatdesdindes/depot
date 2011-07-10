module ApplicationHelper
  def display_counter counter
    if counter >= 5
      raw '<p>You\'ve seen this page ' + pluralize(@counter, 'time') + '</p>'
    end
  end
end
