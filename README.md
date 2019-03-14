# README

This readme will help setup and run the app. Postgres is being used in development and amazaon aws is used to store images, along with rails active storage in production. In development, images are stored locally.

## Setup
 - run `bundle install` to install all gem dependencies.
 - migrate database using `rails db:migrate`
 - load sample data using `rails stage:data`
 - start rails server `rails s`
 
## Running the tests
- Tests can be found in '\spec'
- Run all tests using `rspec spec\`
 
## Running the app
- The post task is available on root and is self explanatory
- send post requests to `/triangle` with arguments `triangle: {side, side, side}`
- [httpie](https://httpie.org) example: `http post localhost:3000/triangle triangle:='[3, 3, 3]'` should return **"Equilateral"**.
