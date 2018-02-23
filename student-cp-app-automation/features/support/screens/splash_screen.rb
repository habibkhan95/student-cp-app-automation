class Splash < App

  def trait
     'Splashscreen'
  end

  def await
    wait_for_activity(trait)
  end


end
