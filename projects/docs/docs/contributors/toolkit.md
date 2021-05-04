---
title: "Toolkit"
slug: "/docs/contributors/toolkit"
---

With the goal of easing external contributions to the project,
the repository contains a Ruby CLI tool, toolkit,
with useful tools for interacting with the different components of the project.
Moreover,
since the same tool is used by CI pipelines,
it ensures we use workflows consistently across local and CI environments.

To use the tool, you need to install its dependencies using [Bundler](https://bundler.io/).
You can do it by running the following command in the root of the repository.
Make sure you have the Ruby version specified in the [environment page](/docs/contributors/environment).

```bash
bundle install --gemfile=projects/toolkit/Gemfile
```

After installing the dependencies,
you should be able to run the tool by running the executable `projects/toolkit/bin/toolkit`.
As you might note,
having to type such long path that and remembering that is relative to the current directory is slightly inconvenient.
Therefore we provide a [Shadowenv](https://github.com/Shopify/shadowenv) configuration that allows running `toolkit` in any project directory.

Install Shadowenv as described in their [Getting Started](https://shopify.github.io/shadowenv/getting-started/) guidelines,
and run `shadowenv trust` a the root of the repository.
After that, you should be able to run `toolkit` and get the CLI's help printed out.
