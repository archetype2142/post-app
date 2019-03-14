# README

This readme will help setup and run the app

## Setup
 - run `bundle install` to install all gem dependencies.
 - migrate database using `rails db:migrate`
 - load sample data using `rails stage:data`
 - start rails server `rails s`
 
## Running the app
- The post task is available on root and is self explanatory
- send post requests to `/triangle` with arguments `triangle: {side, side, side}`
- [httpie](https://httpie.org) example: `http post localhost:3000/triangle triangle:='[3, 3, 3]'` should return **"Equilateral"**.
