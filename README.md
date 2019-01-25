This is the README for Temperature Conversion, which is a demo example of a very basic Rails app with no models. This is part of a 'deliberate practice' coding exercise. You can do this on your own or as part of a pair programming experience. Only look at the code here when you're done.

The goal is to think about how you'd solve this challenge, and to work at developing code to make this work. There is no 'correct' version of this code. The purpose is deliberate practice to gain more experience creating Rails applications.

The formula for conversion from farhrenheit to celsius is:

        F to C: (F - 32) * 5/9
        C to F: (C * 9/5) + 32

Start your new rails app with the command (unless you're in Cloud 9)

        rails new temp_convert

This will create a new rails application for you to use in this exercise.

        rails generate controller convert index celsius

This will create a controller with index and celsius methods, and set up the routes.rb file for
the paths on this controller so that you can view your app at localhost:3000/convert/index. 

Now we can get started with the rounds of the exercise. Remember, each round should be only twelve minutes. 

You can get started by creating a form in the app/views/convert/index.html.erb file to enter the temperature to convert. Our form is not tied to a model, so we use the form_tag, which needs to know the name of the method in the controller, and if it's a get or put. You also need to give your text_field a variable name, which you retrieve in the controller.  We finish the whole thing with an 'end' tag.

        <h1>welcome to the converter</h1>
        <p>enter a temperature in fahenheit to see its value in celsius</p>
        <%= form_tag( "/convert/celsius", method: "get") do %>
        <%= label_tag "convert a temp" %>
        <%= text_field_tag :fahrenheit %>
       <%= submit_tag("Convert") %>
        <% end %>

The controller needs to retrieve the 'fahrenheit' value and then convert it to celsius.
        def celsius
                @celsius_temp = (params[:fahrenheit].to_i-32)*0.5556
                return @celsius_temp
        end

I'll leave you to set up the celsius.html.erb page to display the result.

Round one: Edit index and celsius views so that you land on the index page and fill in the form with the temperature in farhrenheit that you'd like to convert, press a button, and then end up on the celsius page with the result of your conversion.

Round two: build on the previous work so that you can convert from celsius to farhrenheit in the same form by adding a radio button, which will let you indicate which way you want to do the conversion. You'll find this RailsGuide on views useful http://guides.rubyonrails.org/form_helpers.html

Round three: Develop some other feature to push the boundaries of what you want to learn with Rails.
