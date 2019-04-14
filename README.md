# Automation Framework 

## Prequisites

* Ruby installed on machine
* Bundler
* IDE of choice

## How to setup

* Clone project from GitHub
* Run ```bundle install``` in command line in the root of the project

## How to run

* In command line, type ```rspec <<spec_name>>```

## Implementation details

* Spec folder contains spec_helper and all other specs (test suites) 
* Currently, chromedriver.exe is located in the spec folder out of convenience
* Lib folder contains a class for each page under the page_objects folder and a class ```Request``` to help with processing API requests
* A GEM file that defines all the gems used in the project so they can be installed with the ```bundle install``` command immediately after downloading the project
* .rspec generated with ```rspec --init``` command
