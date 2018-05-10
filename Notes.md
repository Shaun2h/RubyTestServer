  
#notes notes baby.



testing of routes. <br>
localhost:3000/base/new = current <br>
localhost:3000/anythingelse = show all routes in routes.rb.<br>
localhost:3000 is now mapped over to /base/new. using this in routes->  root to: 'base#new' apparently this changes the localhost:3000/ <br>
to point to base/new instead. If i don't do base/new however... it won't work normally either though... <br>
<br>
Rails is a language about convention. And i know the controllers should be uppercase first letter and singular, not plural. But it does'nt<br>
matter now. Keep in mind the issue of continuous convention use or insistence.<br>


<br>
<br>

#on Database.
Typical sqlite database. Current type is sqlite3. accessible in /db of your root rails project.<br>


#on Routing.

more at: https://richonrails.com/articles/understanding-rails-routing<br>

get "users", to: "usersindex"<br>
http GET method, In this instance, gets a list of users<br>

of note is that to: "usersindex" implies if you have a get request to "users", we look to the controller named users, and it's method index.<br>

get "users/:id", to: "usersshow"<br>
 In this instance, gets a specific user via the provided id.  For example: /users/3882<br>

post "users", to: "userscreate"<br>
 http POST method, In this instance, used for creating a user.<br>

put "users/:id"<br>
 http PUT method, used for updating a resource, In this instance, updates the user.  Older versions of Rails used this for all updates.<br>

patch "users/:id"<br>
  http PATCH method.  in this instance, used to partially update the user's information.<br>

delete "users/:id"<br>
 http DELETE method.  In this instance, used to delete a user.<br>



<---------------------Resources/ Singular resources------------->
resources :users<br>
 generates:<br>
   get "/users" -- index on your controller<br>
   get "/users/:id" -- show on your controller<br>
   get "/users/new" -- new method on your controller<br>
   post "/users" -- create on your controller<br>
   get "/users/:id/edit" -- edit method on your controller<br>
   put "/users/:id" -- update on your controller<br>
   patch "/users/:id" -- update on your controller<br>
   delete "/users/:id" -- destroy on your controller<br>


resource :privacy_policy<br>
 generates:<br>
   get "/privacy_policy" -- show on your controller<br>
   get "/privacy_policy/new" -- new method on your controller<br>
   post "/privacy_policy" -- create on your controller<br>
   get "/privacy_policy/edit" -- edit method on your controller<br><br>
   put "/privacy_policy" -- update on your controller<br>
   patch "/privacy_policy" -- update on your controller<br>
   delete "/privacy_policy" -- destroy on your controller<br>



<---------Generate specific parts using that keyword in routes.rb------------><br>

resources :users, except: [:show]<br>
 generates actions for everything except for get "/users/:id"<br>

resource :privacy_policy, only: [:show]<br>
 only generate the get "/privacy_policy route for the Privacy Policy.<br>
<br>

<---------------Model stuff--------------------> <br>
   Models are linked to your db it seems. Basic model startup => rails generate model post title:string body:text <br>
   in this case post is the name of your model. This will generate a title column with a varchar type and a body column with a text
    type in the databse (sqlite).<br>
    If no type is specified the string type will be used by default.<br>
    You can use the following types:<br>
        integer<br>
        primary_key<br>
        decimal<br>
        float<br>
        boolean<br>
        binary<br>
        string<br>
        text<br>
        date<br>
        time<br>
        datetime<br>


<---------------Migration stuff --------------------><br>

There are a few ways to state the file. <br>

This is the example of a example where you define up and down instead. <br>
 So when you "up" is when you place the thing into the db<br>
When you "down" is when you take the thing from the db<br>

class CreateUrls < ActiveRecord::Migration <br>
  def self.up <br>
      create_table :urls do |t|<br>
      t.string :url<br>
      t.timestamps<br>
    end<br>
  end<br>
  def self.down<br>
    drop_table :urls<br>
  end<br>
end<br>



Another option is to use change instead of up and down. <br>
class CreateUsers < ActiveRecord::Migration[5.2]<br>
  def change<br>
    create_table :users do |t|<br>
      t.string :username :null => false<br>
      t.timestamps<br>
    end<br>
  end<br>
end<br>

of note is how it is used to tell how the database should be created.<br>
don't forget to rake db:migrate<br>