<img src="assets/logo.png" width="100"/>

# Buildify

Buildify is a modern open-source deployment tool built by a non-profit organization.

## Projects

| Project              | CI                                                                                                                                                       | Deployment |
| -------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------- |
| [app](/projects/app) | [![App](https://github.com/buildifydev/buildify/actions/workflows/app.yml/badge.svg)](https://github.com/buildifydev/buildify/actions/workflows/app.yml) |            |

## Setup

1. Clone the project `git clone git@github.com:buildifydev/buildify.git`.
2. Ensure you are using the Ruby version specified in the file`.ruby-version`.
3. Ensure you are using the Node version specified in `.nvmrc`.
4. Install [shadowenv](https://github.com/Shopify/shadowenv) and trust the environment.
5. Run `bundle install --gemfile=projects/toolkit/Gemfile`.
6. Run `toolkit up`.
