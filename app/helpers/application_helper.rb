module ApplicationHelper
  def current_date
    DateTime.now.year
  end

  def current_link_to_project
    "<a href='https://github.com/TupoBanKai/test-guru'>Учебный проект в онайн-школе Thinknetica</a>".html_safe
  end
end
