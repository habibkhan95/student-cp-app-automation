require 'pry'

class ItemsSelectScreen < App

  def trait
    'itemsSelect'
  end

  def await
    wait_for_activity(trait)
  end

  def check_version_no
    query("* id:'home_version_text'", :text).first
  end
  def tap_first_two_items
    tap_when_element_exists("* id:'CheckBox0'")
    tap_when_element_exists("* id:'CheckBox1'")
  end
  def find_match_btn
    tap_when_element_exists("* id:'FindMatchBtn'")
  end
  def view_all_items(argument)

      element_exists("* text:'#{argument}'")
  end
  def select_multiple_items
    tap_when_element_exists("* id:'CheckBox1'")
    tap_when_element_exists("* id:'CheckBox12'")
    tap_when_element_exists("* id:'CheckBox8'")
    sleep 1
  end
  def tap_clear_btn
    tap_when_element_exists("* id:'ClearBtn'")
  end
  def clear_check
    tap_when_element_exists("* id:'button1'") #to tap yes on the dialog box, 'no' = "button2"
    query("android.widget.CheckBox", :checked)
  end

  def tap_home_btn
    tap_when_element_exists("* id:'imageButton'")
    tap_when_element_exists("* id:'button1'")
  end


  # Your screen specific methods here

end
