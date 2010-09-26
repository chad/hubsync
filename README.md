# HubSync

Synchronize your GitHub repositories for offline viewing.

## Requirements

* [git](http://git-scm.com)
* [bundler 1.0.0](http://gembundler.com) (for development)
* [ruby 1.9.2](http://ruby-lang.org) (for development)

## Installation

    $ gem install hubsync

## Usage

    $ hubsync [options] [directory]

*TODO*

### Synchronizing repositories you own

    $ hubsync -o [directory]

*TODO*

### Synchronizing repositories you are a collaborator on

    $ hubsync -c [directory]

*TODO*

### Synchronizing repositories in your watchlist

    $ hubsync -w [directory]

*TODO*

### Synchronizing another person's watchlist

    $ hubsync -u <username> [directory]

*TODO*

## Options

* `--own, -o`: *TODO*
* `--collabed, -c`: *TODO*
* `--watched, -w`: *TODO*
* `--user, -u`: *TODO*

## Configuration

*TBD*

## Development and Contributing

HubSync uses [Bundler](http://gembundler.com) to manage its dependencies during
development. To begin development, fork [dirtyalpaca/hubsync][1], ensure you
have Bundler (>= 1.0.0) installed and run `bundle install` inside the clone of
your fork.

Specs can be run via `rake spec` and features via `rake cucumber`.

Code coverage for both specs and features is automatically generated on each run
via SimpleCov.

The workflow for contributing code to HubSync is as follows:

* Fork [dirtyalpaca/hubsync][1].
* Create a topic branch for your feature or bug fix.
* Include specs (and features if appropriate) for your code (it won't be
  accepted otherwise).
* Create an issue in HubSync's [issue tracker][2] if there isn't one already.
* Link to the topic branch you created in the issue's description or your
  comments.
* Send me a [pull request](http://help.github.com/pull-requests/)

## Copyright

Copyright (c) 2010 by Anthony Burns. See the LICENSE for details.

  [1]: http://github.com/dirtyalpaca/hubsync
  [2]: http://github.com/dirtyalpaca/hubsync/issues
