# Rails API Template

[![CircleCI](https://circleci.com/gh/rootstrap/rails_api_base.svg?style=svg)](https://circleci.com/gh/rootstrap/rails_api_base)
[![Code Climate](https://codeclimate.com/github/rootstrap/rails_api_base/badges/gpa.svg)](https://codeclimate.com/github/rootstrap/rails_api_base)
[![Test Coverage](https://api.codeclimate.com/v1/badges/63de7f82c79f5fe82f46/test_coverage)](https://codeclimate.com/github/rootstrap/rails_api_base/test_coverage)

Rails Api Base is a boilerplate project for JSON RESTful APIs. It follows the community best practices in terms of standards, security and maintainability, integrating a variety of testing and code quality tools. It's based on Rails 6 and Ruby 2.6.

Finally, it contains a plug an play Administration console (thanks to [ActiveAdmin](https://github.com/activeadmin/activeadmin)).

## Features

This template comes with:
- Schema
  - Users table
  - Admin users table
- Endpoints
  - Sign up with user credentials
  - Sign in with user credentials
  - Sign out
  - Reset password
  - Get and update user profile
- Administration panel for users
- Rspec tests
- Code quality tools
- API documentation following https://apiblueprint.org/
- Docker support
- Exception Tracking

## How to use

1. Clone this repo
1. Install PostgreSQL in case you don't have it
1. Create your `database.yml` and `application.yml` file
1. `bundle install`
1. Generate a secret key with `rake secret` and paste this value into the `application.yml`.
1. Run `yarn` to install webpack needs
1. `rails db:create db:migrate`
1. `rspec` and make sure all tests pass
1. `rails s`
1. You can now try your REST services!

## How to use with docker

1. Have docker and docker-compose installed
1. build and run the application with `docker-compose up`
2. Run `docker-compose exec web bash -c "db:migrate"`
3. You can now try your REST services!

## Code Owners

You can use [CODEOWNERS](https://help.github.com/en/articles/about-code-owners) file to define individuals or teams that are responsible for code in the repository.

Code owners are automatically requested for review when someone opens a pull request that modifies code that they own.

## Credits

Rails Api Base is maintained by [Rootstrap](http://www.rootstrap.com) with the help of our
[contributors](https://github.com/rootstrap/rails_api_base/contributors).

[<img src="https://s3-us-west-1.amazonaws.com/rootstrap.com/img/rs.png" width="100"/>](http://www.rootstrap.com)
