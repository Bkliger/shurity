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