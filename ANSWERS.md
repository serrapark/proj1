# Q0: Why is this error being thrown?

A model for Pokemon has not yet been generated.

# Q1: How are the random Pokemon appearing? What is the common factor between all the possible Pokemon that appear? *

The seeds.rb file creates some Pokemon from the beginning, and the home controller randomly samples any one Pokemon from Pokemons that do not have a trainer.

# Question 2a: What does the following line do "<%= button_to "Throw a Pokeball!", capture_path(id: @pokemon), :class => "button medium", :method => :patch %>"? Be specific about what "capture_path(id: @pokemon)" is doing. If you're having trouble, look at the Help section in the README.

The line creates a button that sends a patch to a path defined capture_path, which in fact leads to the capture function in the Pokemon controller. It passes in the id of the Pokemon being captured so that the function can correctly assign and update the new trainer of the Pokemon.

# Question 3: What would you name your own Pokemon?

Erby?

# Question 4: What did you pass into the redirect_to? If it is a path, what did that path need? If it is not a path, why is it okay not to have a path here?

I passed in a path to train_path, with the id of the pokemon's trainer. If the pokemon's health reached 0 or below, I destroyed the pokemon and proceeded.

# Question 5: Explain how putting this line "flash[:error] = @pokemon.errors.full_messages.to_sentence" shows error messages on your form.

It uses flash to catch the errors that the form raises and renders the appropriate message.
https://github.com/serrapark/proj1

# Give us feedback on the project and decal below!

It was really fun!

# Extra credit: Link your Heroku deployed app

https://immense-earth-28217.herokuapp.com/
