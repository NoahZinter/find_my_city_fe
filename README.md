# Find My City
(This README is for the front-end version of our web-application. To visit the back-end repo, please click [here](https://github.com/NoahZinter/find_my_city_be).) 
## About this Project
According to the [USPS](https://www.mymove.com/moving/covid-19/coronavirus-moving-trends/), 15.9 million people moved amidst the COVID-19 pandemic.  

Not all of these moves were permanent. 

Predicting future socioeconomic changes and continuing turmoil relating to COVID-19, the authors of this web application sought to create an app that helps users to make smarter choices concerning moves with the hope that users can find a match of their personality and lifestyle with a city that fits them best.

Finding the ideal match benefits both the person and the city, leading to pride and investment in the communities of that city. 

Thought experiment: What would be the impact of a city filled with people that love their city?

Find My City is a city finding app which allows users to search and sort cities by criteria they find most important. We believe that finding the right city is important for people, cities, and the world. 

This is our attempt at solving this problem.
## Table of Contents
  - [Getting Started](#getting-started)
  - [Screenshots](#screenshots)
  - [Running the tests](#running-the-tests)
  - [DB Schema](#db-schema)
  - [API Services Used](#api-services-used)
  - [Endpoints](#endpoints)
  - [Technologies Used](#technologies-used)
  - [Versioning](#versioning)
  - [Visit a Live Version of this Web App](#visit-a-live-version-of-this-app-on-heroku)
  - [Authors](#authors)

## Getting Started
To run the web application on your local machine, you can fork and clone down the repo and follow the installation instructions below.

## Screenshots 
- Welcome Page
<img width="408" alt="Screen Shot 2021-08-05 at 6 05 56 PM" src="https://user-images.githubusercontent.com/73974901/128436965-496bf35f-8e7f-4fd6-a705-4d865c52d670.png">
- Login Modal
<img width="408" alt="Screen Shot 2021-08-05 at 6 06 10 PM" src="https://user-images.githubusercontent.com/73974901/128437038-69b3fd07-da43-4685-b6a0-c723c9fa4e99.png">
- City Show Page
<img width="408" alt="Screen Shot 2021-08-05 at 6 06 46 PM" src="https://user-images.githubusercontent.com/73974901/128437066-979fca46-808f-493d-a735-9425e72781d8.png">
- Weather Info For City
<img width="408" alt="Screen Shot 2021-08-05 at 6 18 22 PM" src="https://user-images.githubusercontent.com/73974901/128437293-106f6a1b-aa8f-4bc3-973b-283d1c74745b.png">
- Users Dashboard/Comparison Page
<img width="408" alt="Screen Shot 2021-08-05 at 6 12 40 PM" src="https://user-images.githubusercontent.com/73974901/128437114-4d95bb5d-96b0-4c79-a688-af3ed6c4a835.png">


### Installing
First you'll need to:
`bundle install` 

Next we install Figaro.
`bundle exec figaro install`

Figaro allows us to discretely place our API keys inside of our local files. Only you'll be able to see this file, which helps for keeping API keys secret.

Once you have Figaro installed, verify that you have an `application.yml` file in your `config` folder. The directory of the `application.yml` file should be `config/application.yml`.  For more documentation on Figaro, please see [here](https://github.com/laserlemon/figaro). 

Congratulations! Basic setup is now complete. 

Although this app utilizes two API services, we will only need to register for the OpenWeather API service. [Here's  the link to register for the API key](https://home.openweathermap.org/users/sign_up). Please be advised: Though you may receive your API key immediately, it may take a few hours for the key to be activated.

Once you have your key, go to your `config/application.yml` file and follow this convention:

`WEATHER_API_KEY: 'copy_paste_your_api_key_here'`

That should take care of getting your weather API service!

Now we create the database by running the following command in your terminal
`rails db{:drop,:create,:migrate}`

And that should be all you need to finish installation!
### Prerequisites
To run this application you will need Ruby 2.7.2 and Rails 5.2.6
## Running the tests
RSpec testing suite is utilized for testing this application.
 - Run the RSpec suite to ensure everything is passing as expected
`bundle exec rspec`
## DB Schema
The following is a depiction of the Database Schema
![Find My City Schema](https://i.ibb.co/FVxtwj0/Screen-Shot-2021-08-04-at-2-48-34-PM.png)

## API Services Used
[OpenWeather](https://openweathermap.org/) |
[Teleport](https://developers.teleport.org/api/)

## Endpoints
 - User Create `POST /api/v1/users` Creates a user in the datebase
 - City Search `GET /api/v1/city` Get a city by city name and state initials search
 - User Favorite Save `POST /api/v1/favorites` Adds a city to a users favorites
 - User Favorite List `GET /api/v1/users/:id/favorites` Gets the users favorites list
 - Delete Favorite `DELETE /api/v1/favorites/:id` Deletes favorite from user favorites list
 - Get Weather `GET /api/v1/weather` Returns the weather for the cities day

## Technologies Used
- Ruby
- Rails
- RSpec
- JavaScript
- HTML
- CSS
- Bootstrap

## Gems Used
- factory_bot_rails
- faker
- faraday
- bcrypt
- bootstrap
- shoulda-matchers
- figaro
- capybara

## Versioning
- Ruby 2.7.2
- Rails 5.2.6

## Visit a Live Version of this App on Heroku
[https://helpmefindmycity.herokuapp.com](https://helpmefindmycity.herokuapp.com)

## Authors
- **Regina Casias**
  [LinkedIn](https://www.linkedin.com/in/regina-casias-0a6b78196/) |
  [GitHub](https://github.com/rcasias)
- **Kon Ham**
  [LinkedIn](https://www.linkedin.com/in/kon-ham) |
  [GitHub](https://github.com/ignored-comment)
- **Alicia Henzler**
  [LinkedIn](https://www.linkedin.com/in/alicia-henzler-265024209/) |
  [GitHub](https://github.com/ahenzler)
- **Joe Peterson**
  [LinkedIn](https://www.linkedin.com/in/joe-peterson-14718220b/) |
  [GitHub](https://github.com/JoePeterson51)
- **Joe Ray**
  [LinkedIn](https://www.linkedin.com/in/joe-ray-a46140192/) |
  [GitHub](https://github.com/joeray100)
- **Noah Zinter**
  [LinkedIn](https://www.linkedin.com/in/noahzinter) |
  [GitHub](https://github.com/NoahZinter)
