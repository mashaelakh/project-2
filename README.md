# Project <Web Application>
This project is the second project in the GA Software Engineering Immersive course, To apply 
the skills we learned in the fourth and fifth week. 

In this project I choose to develop a web application, where a user can add his project and view other
users projects.
## My Project Deployment



## Technologies used : 
* Git
* Github
* HTML
* Ruby on Rails
* CSS

## wireframes and user stories :
* Day 1 :
- User story
- wire frame

* Day 2 :
- Ruby on Rails
- HTML

* Day 3 : 
- Ruby on Rails
- HTML

* Day 4 :
- CSS

* Day 5 :
- Presentation


## Describe any lines or function in the code:
This line of code is the first page of the application where a user can view all the projects.
```Ruby and  HTML 

    <p id="notice"><%= notice %></p>
<div class="center">
<h1>All Projects</h1>
        <br>
         <br>
        </div>
        <div class="maincontent">
        <div class="d-flex flex-wrap">
          <% @users.each do |user|%> 
          
        <div class="card">
          <div class="card-body">
          <h4 class="card-title">
       <%= user.user_name%></h4>

        <%= link_to ' Projects', projects_path , :class=>"btn btn-dark" %> 
              </div>
       </div>
       <br>
    <% end %>
</div>
</div>

```

## Challenges: 
Using Ruby on Rails for the first time to develop a whole web page.

## Unsolved problems which would be fixed in future iterations.
Need more work to improve the app such as designing and adding more functionality 