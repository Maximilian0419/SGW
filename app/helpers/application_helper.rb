module ApplicationHelper
  
  def current_tab(text)
    @current_tab == text ? "selected" : nil
  end
  
end
