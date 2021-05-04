<img src="assets/logo.png" width="100"/>

# Buildify

Buildify is a modern open-source deployment tool that runs in your infrastructure. This repository is a monorepo that contains the following projects:

## Setup

1. Clone the project `git clone git@github.com:buildify/buildify.git`.
2. Ensure you are using the Ruby version specified in the file`.ruby-version`.
3. Ensure you are using the Node version specified in `.nvmrc`.
4. Install [shadowenv](https://github.com/Shopify/shadowenv) and trust the environment.
5. Run `bundle install --gemfile=projects/toolkit/Gemfile`.
6. Run `toolkit up`.
