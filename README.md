# student-cp-app-automation
This repository contains automation test for the [Student Crowd-Purchasing application](https://github.com/habibkhan95/student-cp-app). The automation test scenarios are written in [Gherkin Syntax](https://github.com/cucumber/cucumber/wiki/Gherkin), which is then associated to appropriate functions/method written in Ruby. The tool used to execute this automation test is [cucumber](https://cucumber.io/), with the help of the [Calabash - Android](https://github.com/calabash/calabash-android). 

## Prerequisite 
Download the latest version of Ruby using RVM (highly recommended). 

### Installing Gems
1. In a terminal, navigate to the project root directory
2. Enter ```gem install bundler``` to install Bundler
3. Enter ```bundle install``` to install required Ruby gems including Cucumber and Calabash

### Running the automation tests
1. Connect your device and ensure it is in debug mode ([android](https://www.kingoapp.com/root-tutorials/how-to-enable-usb-debugging-mode-on-android.htm))
2. Navigate to the project root directory on Terminal (Mac OS)
3. Enter ```calabash-android run build/app-debug.apk``` into the terminal









