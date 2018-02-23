##
# Screen specific methods should be added to a class which inherits from the
# Android class defined in '_android.rb'
##
require 'pry'

class HomeScreen < App

  def trait
    'MainActivity'
  end

  def await
    wait_for_activity(trait)
  end

  def check_version_no
    query("* id:'home_version_text'", :text).first
  end

  def touch_nearby_shoppers_btn
    #touch("* id: 'btn_Maps'")
    tap_when_element_exists("* id:'btn_Maps'")
  end

  def select_items_btn
    tap_when_element_exists("* id:'btn_items'")
  end

  def select_items_btn_is_visible
    element_exists("* id:'btn_items'")
  end
  def browse_button_is_visible
    element_exists("* id:'btn_Maps'")
  end
  def tap_browse_button
    tap_when_element_exists("* id:'btn_Maps'")
  end

  # Your screen specific methods here

end
