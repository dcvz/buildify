<img src="assets/logo.png" width="100"/>

# Buildify

Buildify is a modern open-source deployment tool built by a non-profit organization. The tool is inspired by proprietary tools like [Heroku](https://heroku.com), [Vercel](https://vercel.com), [Netlify](https://netlify.com), and open-source solutions like [Shipit](https://github.com/Shopify/shipit-engine). It's designed to conceptually compress the intricacies of releasing software to help developers focus on building their apps.

## Projects

| Project                      | CI                                                                                                                                                                   | Deployment                                                                                                                                                            | URL                                                   |
| ---------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------- |
| [app](/projects/app)         | [![App](https://github.com/buildifydev/buildify/actions/workflows/app.yml/badge.svg)](https://github.com/buildifydev/buildify/actions/workflows/app.yml)             | [![Deploy](https://github.com/buildifydev/buildify/actions/workflows/deploy.yml/badge.svg)](https://github.com/buildifydev/buildify/actions/workflows/deploy.yml)     | [https://app.buildify.dev](https://app.buildify.dev)  |
| [cli](/projects/cli)         | [![CLI](https://github.com/buildifydev/buildify/actions/workflows/cli.yml/badge.svg)](https://github.com/buildifydev/buildify/actions/workflows/cli.yml)             |                                                                                                                                                                       |
| [runner](/projects/runner)   | [![Runner](https://github.com/buildifydev/buildify/actions/workflows/runner.yml/badge.svg)](https://github.com/buildifydev/buildify/actions/workflows/runner.yml)    |                                                                                                                                                                       |
| [toolkit](/projects/toolkit) | [![Toolkit](https://github.com/buildifydev/buildify/actions/workflows/toolkit.yml/badge.svg)](https://github.com/buildifydev/buildify/actions/workflows/toolkit.yml) |                                                                                                                                                                       |
| [website](/projects/website) | [![Website](https://github.com/buildifydev/buildify/actions/workflows/website.yml/badge.svg)](https://github.com/buildifydev/buildify/actions/workflows/website.yml) | [![Netlify Status](https://api.netlify.com/api/v1/badges/94082320-b667-45eb-a1cd-59ac49a67b83/deploy-status)](https://app.netlify.com/sites/buildify-website/deploys) | [https://buildify.dev](https://buildify.dev)          |
| [docs](/projects/docs)       | [![Docs](https://github.com/buildifydev/buildify/actions/workflows/docs.yml/badge.svg)](https://github.com/buildifydev/buildify/actions/workflows/docs.yml)          | [![Netlify Status](https://api.netlify.com/api/v1/badges/db6cd641-9035-417e-b5f4-bfb239607006/deploy-status)](https://app.netlify.com/sites/buildify-docs/deploys)    | [https://docs.buildify.dev](https://app.buildify.dev) |

## Setup

1. Clone the project `git clone git@github.com:buildifydev/buildify.git`.
2. Ensure you are using the Ruby version specified in the file`.ruby-version`.
3. Ensure you are using the Node version specified in `.nvmrc`.
4. Install [shadowenv](https://github.com/Shopify/shadowenv) and trust the environment.
5. Run `bundle install --gemfile=projects/toolkit/Gemfile`.
6. Run `toolkit up`.
