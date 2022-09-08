<!-- - nav bar on your profile that shows your INFO? -->

- take your foods as an array as an argument and shows random foods from an api as a recommender list of the top 3 foods??

- have a model of foods from the restauraunt and you can click the resturaunt

- have a personal rating of the food then sort by highly rated foods: "Highest rated foods"

- sorting methods like highest eat count: "favourite foods"

- add a pie chart showing your most eaten foods if you have more than 4 foods

- use justify-content: space-between to space the foods maybe? 

- have a sorting bar or filter bar

- api for nutritional information

- api for recipies. api for resturaunts based on reviews?

JOINT TABLE
- have a tag model, so you can create a tag and view a tag
- food has many tags and a tag has many logs

OR
1. rails generate model Tag name:text
2. rails generate migration create_logs_tags tag_id:integer log_id:integer
3. rails db:migrate && add :id => false

AND OR/
4. rails generate controller Tags index show edit new
5. add methods for each action to the tags_controller.rb
6. add views for your actions
7. configure routes

ACTIVE RECORD QUERIES
```
Client.where("orders_count = ?", params[:orders])
```
Active Record will take the first argument as the conditions string and any additional arguments will replace the question marks (?) in it.

self.foods.pluck(:name).uniq