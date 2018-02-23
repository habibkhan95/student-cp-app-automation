##
# Step definitions specific to the feature file 'example.feature' go here.
##

# Then(/^I should see the version number "(.*?)"$/) do |expected_version|
#   app_version = @screen.home.check_version_no
#   unless app_version == expected_version
#     raise "Saw #{app_version} instead of #{expected_version}"
#   end
# end
require 'pry'

# Test 1
Then (/^I should be displayed with two buttons$/) do
  @screen.home.select_items_btn_is_visible
  @screen.home.browse_button_is_visible
  sleep 2
end



#Test 2
And (/^I tap the 'browse for nearby shoppers' button$/) do
  @screen.home.await
  @screen.home.touch_nearby_shoppers_btn
end

Then (/^I should be displayed with results on Goolge Maps$/) do
  @screen.maps.await
  sleep 2
end


#Test 3
And (/^I tap the 'select edit items' of interest button$/) do
  @screen.home.select_items_btn
  sleep 2
end
And (/^I select atleast one item$/) do
  @screen.items.tap_first_two_items
  sleep 3
end

And (/^I tap the Find Match button$/) do
  @screen.items.find_match_btn
  sleep 2
end

Then (/I should be able to visually see recommendations$/) do
  @screen.maps.tap_sophie

  # tap_when_element_exists("* :'Sophie'")

  # wait_for_elements_exist(["* id:'email_field'", "* id:'pwd_field'"])
  # "android.widget.CheckBox index:#{index.to_i-1}"
  sleep 5
end

#Test 5
# And (/^I tap the 'select edit items' of interest button$/) do
#   @screen.home.select_items_btn
# end

Then (/^I should be able to view (.*)$/) do |argument|
 @screen.items.view_all_items (argument)
end


#   "([^"]*)"
# (.*)


  # @screen.items.view_all_items
  # element_exists("* text:'#{item}'")
  # tap_when_element_exists("* text:'#{arg1}'")

#  @screen.items.view_all_items item

And (/^I select multiple items$/) do
  @screen.items.select_multiple_items
end
When (/^I tap the 'Clear Selection' button$/) do
  @screen.items.tap_clear_btn
end
Then (/^All items selected should be de-selected$/) do
  @screen.items.clear_check
end

And (/^I tap the Home button on the top nav bar$/) do
  @screen.items.tap_home_btn
end
Then (/^I should be redirected to the Main Menu$/) do
  @screen.home.await
end
And (/^I tap the Home button$/) do
  @screen.maps.tap_home
end

Given (/^The Splash screen is displayed$/) do
  @screen.splash.await
end
Then (/^I should be taken to the Main Menu$/) do
  @screen.home.await
end
