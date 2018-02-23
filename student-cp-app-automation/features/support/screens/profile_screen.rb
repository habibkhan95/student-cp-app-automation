class Profile < App

  def trait
    'Sophie'
  end

  def check_sophie_info
    element_exists("* text:'Sophie's Profile'")
  end

  def await
    wait_for_activity(trait)
  end

  def tap_email_btn
    tap_when_element_exists("* id:'EmailBtn'")
  end



end
