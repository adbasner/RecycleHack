# Can I Recycle this? - Ruby Hack Night

This project was started during the Chicago Ruby hack night on Jun 12th, 2019. A description of the project is located at "https://github.com/chicagoruby/hack-night-is-it-recyclable"

Ruby version: '2.6.3'  
Rails version: '5.2.3'

## To run locally:

1. Clone from https://github.com/adbasner/RecycleHack.git'
2. Run 'bundle install'
3. Create a database 'rails db:create'
4. Run migration 'rails db:migrate'
5. Seed the database 'rails db:seed'
6. Start server 'rails s'
7. View in your favorite browser at 'localhost:3000'

## Web version

To see a deployed version on heroku, visit:
"https://basner-recycle-hack.herokuapp.com/"

## Description

This app could be made with any framework or language, I chose to use Ruby on Rails, mostly due to familiarity even though it might be a bit much for this project.

There is a single table in the database titled trash (since we are looking through trash items to see if they are recyclable) and it is populated when running the seed file by getting the data from the JSON file found in the data folder of the project github. "https://raw.githubusercontent.com/chicagoruby/hack-night-is-it-recyclable/master/data/chicago-recycling-guide.json"
  
___
Challenge 1: Display the JSON data to the user.  

Solution 1: There is an index link in the navbar where you can browse through every item.  This is a Index rest route.
___
Challenge 2: Using the same JSON data, create a dropdown of the materials and show the line item for the selected material.  
  
Solution 2: A drop down nav allows you to view an individual show page for the selected item. The pages are Show rest routes.  
___
Challenge 3: Allow the user to search for a particular material.   
  
Solution 3: The search box in the nav searches for all materials that contain a particular phrase.  Example: a search for paint returns 4 types of paint, oil based, latex, sprary cans full and empty. The search is case insenstive.  
___
Challenge 4: Provide the ability to add to the list.     
  
Solution 4: There is an option to add a new item to the data base, link in the nav.  This is a New rest route, which posts to the Create rest route.  
___ 
Challenge 5: Provide a section with links to Recycling guides and resources to help people trying to find more information.  
  
Solution 5: A learn more drop down was added to the navbar.  
___
  
## Other Comments
The syling was down using bootstrap 4. There is a lot to be desired, but design wasn't a priority.

The add item function is not restricted by a log in or admin, so anyone visiting the page could add something.  If this was a live production app, that would be absolutely terrible.

There are currently no:
* Tests
* Validations
* Authorizations or authentications
* Ways to edit or delete items (not part of the challenge but could be done with rest routes)

I currently do not plan on adding any of these features and as of now, the project will not be updated.