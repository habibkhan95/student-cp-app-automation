class MapsScreen < App

  def trait
    'MapsActivity'
  end

  def await
    wait_for_activity(trait)
  end

  def check_version_no
    query("* id:'home_version_text'", :text).first
  end
  def all_marker_visible
    tap_when_element_exists("* marker marked:'Sophie'")
    # perform_action('tap_map_marker_by_title', Sophie, 60000)
    sleep 5
  end
  def tap_home
    wait_for_activity(trait)
    tap_when_element_exists("* id:'imageButton1'")
  end

  # Your screen specific methods here

end
