# A simple refactoring flow for Ruby on Rails

This repository demonstrates a reasonable refactoring workflow for Ruby on Rails projects, pushing code from the Views into the Models, keeping the "Dumb Views, Skinny Controllers, Fat Models" paradigm of MVC in mind. 

To use this repository, view the commit history and observe the way the code changes when implementing a very simple feature for a RoR project with one scaffolded resource: Projects. 

The associated walkthrough for this code can be found at [this blog post](http://www.toptal.com/ruby-on-rails/build-dumb-refactor-smart-ruby-on-rails).

1. View -- put your new feature in a View
2. Partial -- partials are a quick way to refactor a view
3. Helper -- if it's still purely a view concern, helpers are the next place to go
4. Controller -- database calls should be refactored into your controller actions
5. Controller Filters -- you should refactor your controller actions when multiple actions use the same code or you want to clean up your controller actions so they represent only what they do
6. Application Controller -- code shared by all controllers can be refactored into the Application Controller
7. Model -- controllers are meant to be thin, as few lines as possible, so if you notice your controllers getting a bit thick, move some of your model-manipulating code into the models themselves
8. Model Filters -- once you have a decent amount of code in your models, consider using model filters to remove explicit function calls. More often than not, a function call in a Controller's update or create actions can be replaced by a before_save or before_create filter. 
9. Libraries in lib/ -- when you start duplicating code in your Model classes, put some of that in a library! If it gets good enough, you can even separate it into its own gem and release it on RubyGems :-)
