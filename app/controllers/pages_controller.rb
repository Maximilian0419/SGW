class PagesController < ApplicationController
  def home
  end

  def about
    @current_tab = "About"
  end
  
  def special
    @current_tab = "Special"
  end
  
  def inventory
    @current_tab = "Vehicle"
  end
  
  def car
  end

  def footprint
    @current_tab = "Footprint"
  end
  
  def eco_links
    @current_tab = "Eco"
  end

end
