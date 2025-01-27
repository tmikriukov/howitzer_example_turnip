Howitzer Example Turnip
=======================

[![Build Status](https://app.travis-ci.com/strongqa/howitzer_example_turnip.svg?branch=master)](https://app.travis-ci.com/strongqa/howitzer_example_turnip)
[![CircleCI](https://circleci.com/gh/strongqa/howitzer_example_turnip.svg?style=svg&circle-token=c6dac71b26747e0dbb4fd98bab9922943ff455be)](https://circleci.com/gh/strongqa/howitzer_example_turnip)

Howitzer example project based on Turnip for demo web application https://demoapp.strongqa.com

## Requirements

- Ruby 3.0.2

## Getting Started

*Note!* This project uses Git submodules in order to reuse common code between similar projects:

[howitzer_example_rspec](https://github.com/strongqa/howitzer_example_rspec)

[howitzer_example_cucumber](https://github.com/strongqa/howitzer_example_cucumber)

Typically it is not required for a regular project based on [Howitzer](https://github.com/strongqa/howitzer)

### How to try the project locally

- Clone project

```
git clone --recursive git@github.com:strongqa/howitzer_example_turnip.git
```

- Install dependencies

```
bundle install
```

- Get list of available commands

```
rake -T
```

## Contributing

Code quality is controlled by [Rubocop](https://github.com/bbatsov/rubocop)

It is useful to activate rubocop pre-commit git hook for changed files.

```
cp scripts/pre-commit .git/hooks/pre-commit
```
