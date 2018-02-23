# Step definitions for all steps that simply check which screen is displayed
require 'pry'
Given(/^I am on the Home screen$/) do
  @screen.home.await
end
Given(/^I am on the Items selection screen$/) do
  @screen.home.await
  @screen.home.select_items_btn
  @screen.items.await
end
Given (/^I am on the Maps screen$/) do
  @screen.home.await
  @screen.home.tap_browse_button
  @screen.maps.await
end
