Dairy
================


# Dairy

Rails app that creates the shortest possible url

dairy.herokuapp.com

## The setup

1. install the following if missing:
  * install homebrew - run the following:
    * `ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"`
    * `brew update`
  * install ruby and rails -run the following:
    * `brew install rbenv ruby-build`
    * `gem install rails`

2. fork/clone this repo

3. cd to Dairy

4. run the following commands:
  * `bundle install`
  * `rake db:create`
  * `rake db:migrate`

5. run `rails s`

## Overcoming Challenges

1. Keeping track of multiple elements and associations
  * Started out with several different model patterns before deciding most efficient
2. Which configuration should take precedence?
  * Do flavors have higher priority than cones, etc
3. Establishing and linking Mandrill webhooks
  * Passing on the correct params from the order

## Design Decisions
1. Keep Order Superior
  * Logically it made sense to have the single parent as Order
  *This sacrificed some flexibility and required joining Flavor in
2. Seperate inventory into individual pages and keep them independent, despite a usability hurdle.

3. Make Containment own Flavor and Topping
  * Physical container, needs flavor and topping

4. Layout
  * simple and clean designed with bootstrap
  * created a three branch model:
    * Inventory
    * Order
    * Admin

## Future improvements
* Implement correct form
* Show correct details on the order page
* Persit personal details
* Add images locally and cloud
* Add email
* Add SMS
* Polish admin for efficiency
* Polish admin for efficiency
