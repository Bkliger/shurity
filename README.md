#Shurity

When people look for electronics or technical products, they are confronted with a confusing barage of product specs. Shurity is a startup looking for funding and this is a demonstration of the concept. A user chooses a product category and is presented with a set of questions. In the fully developed product, those answers would be fed to a recommendation engine and product suggestions are returned. In this demo product, the recommendations are pre-determined. After the user looks at the ranked recommendations, they can dig deeper and see why the reasoning behind the recommendations. They can then adjust the answers to their questions and get a completely different set of recommendations.

##Special Feature
Unlike other apps that do surveys, in Shurity all questions can be answered on one page. This is done by creating params that consist of an array with a  hash for each answer back to the controller. The controller goes through the array and creates an Answer record for each hash.

Here is a typical params[:answer]:

"answers"=>[{"answer_text"=>"3", "category_id"=>"79", "user_id"=>"814", "question_id"=>"186"},{"answer_text"=>"3", "category_id"=>"79", "user_id"=>"814", "question_id"=>"187"}, {"answer_text"=>"3", "category_id"=>"79", "user_id"=>"814", "question_id"=>"188"}, …………….{"answer_text"=>"none", "category_id"=>"79", "user_id"=>"814", "question_id"=>"195"}]
	
##Database Model
![alt text](er-doc.tiff)

##Technologies Used
* Ruby on Rails
* Javascript
* JQuery
* Postgresql

##Gems Used
* gem 'jquery-rails'
* gem 'bootstrap-slider-rails'

##Application Flow

![alt text](shurity.png)


##Future features
* force users to log in after a certain point in the process

* use an API call to a site like Indix to retrieve retailer information on a selected item


##User Stories

Shurity User Stories* A user goes the the Shurity landing page and selects a Bluetooth Speaker product category. They are taken to a page with questions that will narrow down the requirements for the that product.* The user answers the questions. None are required. The user then presses the Save Answers button and is taken to the Product Suggestions page. There would normally be a recommendation engine that takes the answers to the questions and the preference rankings and produces ranked product suggestions. This app will simulate this.* The user can click a Detailed Listing button and see a detailed reason why this was recommended.

* A user can return to the product suggestion list* The user can click on the Adjust your Product Preference Answers button and go to the Adjust Your Product Preferences page.* The user can change their answers. The user then presses the Update Answers button and is taken to the Product Suggestions page – this time with different suggestions.

##Hosted Address
https://shurity.herokuapp.com/