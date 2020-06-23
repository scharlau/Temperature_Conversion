# Temperature Convertion

This is Temperature Conversion, which is a basic Ruby on Rails app with no models. This is part of a 'deliberate practice' coding exercise. You can do this on your own or as part of a pair programming experience. Only look at the code in the repo when you're done.

The goal of the exercise is to think about how you'd solve this challenge, and to work at developing code to make the idea work. There is no 'correct' version of this code. The purpose is spend time on 'deliberate practice' to gain more experience creating Rails applications.

The formula for conversion from farhrenheit to celsius is:

        F to C: (F - 32) * 5/9
        C to F: (C * 9/5) + 32

## Start Building the App
Start building your new rails app with these three commands (you might only need the first one)

        rails new temp_convert
        rails webpacker:install
        yarn install --missing files

This will create a new rails application for you to use in this exercise. After the application is generated, then cd into that new directory and run this command:

        rails generate controller convert index celsius

This will create a controller with index and celsius methods, and set up the routes.rb file for
the paths on this controller so that you can view your app at localhost:3000/convert/index. Start your sever with the command 

     rails server

With that running, we're ready to do the work. Just refresh the page, modify the form, try it, etc. As you have errors, just edit the file and then refresh the page. 

## Doing the Work

You can get started by creating a form in the app/views/convert/index.html.erb file to enter the temperature to convert. Our form is not tied to a model, so we use the form_tag, which needs to know the name of the method in the controller, and if it's a 'get' or 'put' method. We're only using 'get' methods in this exercise. (You would use 'put' methods when you're putting persistent data onto the server.) You also need to give your text_field a variable name, which you retrieve in the controller.  We finish the whole thing with an 'end' tag.

        <h1>welcome to the converter</h1>
        <p>enter a temperature in fahenheit to see its value in celsius</p>
        <%= form_tag( "/convert/celsius", method: "get") do %>
        <%= label_tag "convert a temp" %>
        <%= text_field_tag :fahrenheit %>
        <%= submit_tag("Convert") %>
        <% end %>

The controller is where the magic happens. You send the controller the 'fahrenheit' value as a variable, and then convert it to celsius, which you send back to the view as 'celsius_temp'.  

        def celsius
           @celsius_temp = (params[:fahrenheit].to_i-32)*0.5556
           return @celsius_temp
        end

I'll leave you to set up the app/views/celsius.html.erb page to display the result. As the minimum that you put in the file, you need to display the ruby variable for the @celsius_temp using the format: <%= @variable_name %> where @variable_name is whatever name you want to see such as @celsius_temp.

Round one: Edit the index and celsius views so that you land on the index page and fill in the form with the temperature in farhrenheit that you'd like to convert, press a button, and then end up on the celsius page with the result of your conversion.

Round two: build on the previous work so that you can convert from celsius to farhrenheit in the same form by adding a radio button, which will let you indicate which way you want to do the conversion. You'll find this RailsGuide on views useful http://guides.rubyonrails.org/form_helpers.html

Round three: Develop some other feature to push the boundaries of what you want to learn with Rails.
