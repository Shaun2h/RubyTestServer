
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



<---------Generate specific parts using that keyword------------><br>

resources :users, except: [:show]<br>
 generates actions for everything except for get "/users/:id"<br>

resource :privacy_policy, only: [:show]<br>
 only generate the get "/privacy_policy route for the Privacy Policy.<br>
<br>

