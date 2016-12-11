[![Stories in Ready](https://badge.waffle.io/MaxProvin/story-box.png?label=ready&title=Ready)](https://waffle.io/MaxProvin/story-box)
<!-- [![Build Status](https://travis-ci.org/MaxProvin/story-box.svg?branch=master)](https://travis-ci.org/MaxProvin/story-box) -->
[![Coverage Status](https://coveralls.io/repos/github/MaxProvin/story-box/badge.svg?branch=master)](https://coveralls.io/github/MaxProvin/story-box?branch=master)


# README

### Overview
This project is targeted at Journalists and Media Outlets. It's purpose is to create a single, easy to navigate space where users can save their preferences to display custom news feeds from multiple outlets on a homepage. As a writer the user can create and save articles or notes to their profile for convenience. These articles can be searched, browsed and reviewed by all other users for feedback, unless the writer gives the article private status(to keep their ideas secret!), or commercial status(so that registered media outlets can see them). Media Outlets can search for articles or writers by topic if they need to commission a story or to find new talent.

### Technologies used
 * Ruby on Rails with a Postgresql database and Rspec & Capybara testing framework
 * Travis CI and Coveralls
 * Shoulda-matchers gem for testing associations with Rspec
 * tinyMCE text-editor
 * Figaro gem for hiding secrets

To see a full list of existing and planned features, navigate to the user_stories.md file in the root of this directory.

Installation instructions
---------
 * Fork this repo then clone it down to your local machine
 * Make sure you have Postgresql installed as your database system ([click here for instructions](psql_install.md))
 * Run the following commands from the terminal
  -`bundle`
  -`bin/rake db:setup`
  -`bin/rake db:migrate`
 * Run `rspec` to make sure all tests are passing
 * To run locally, navigate to the top level of the project directory and run `bin/rails s`, then navigate to 'localhost:3000' in your browser window