# HubSync

Synchronize your GitHub repositories for offline viewing.

HubSync allows you to manage your collection of repositories on GitHub. It will
automatically pull or fetch each repository in the target directory for you.

Please note that HubSync is not a synchronization tool in the classic sense, in
that it does not push any changes back to GitHub for you. HubSync is meant to
allow you to efficiently maintain a clone of your own repositories, repositories
you collaborate on, and your watchlist (or even another user's public
repositories or watchlist if you so desire).

## Requirements

* [git](http://git-scm.com) (tested with version 1.7.2.2)
* [bundler 1.0.0](http://gembundler.com) (for development)
* [ruby 1.9.2](http://ruby-lang.org) (for development)

## Installation

    $ gem install hubsync

## Configuration

HubSync uses the Git global options `github.user` and `github.token` when
accessing your own repositories and your watchlist. More information on setting
these options can be found in GitHub's
[official help](http://help.github.com/git-email-settings/).

Additionally, passing your GitHub username and token via the environment
variables `HUBSYNC_GITHUB_USER` and `HUBSYNC_GITHUB_TOKEN`, or passing the
`--my-user` and `my-token` options will override the global Git options (the
command line options will override the environment variables as well).

## Usage

    $ hubsync [options] [directory]

### Synchronizing repositories you own

    $ hubsync -o [directory]

### Synchronizing repositories you are a collaborator on

    $ hubsync -c [directory]

### Synchronizing repositories in your watchlist

    $ hubsync -w [directory]

### Synchronizing another user's public repositories.

    $ hubsync -u <username> [directory]

### Synchronizing another user's watchlist.

    $ hubsync -wu <username> [directory]

## Options

Use `hubsync --help` for the full list of options.

### Synchronization Targets

* `--own, -o`: Synchronize repositories that you own.
* `--collabed, -c`: Synchronize repositories that you are a collaborator on.
* `--watched, -w`: Synchronize watched repositories in the target directory
  for the yourself (by default or if `-o` is set) or for the specified user (if
  `-u` is used).
* `--user, -u <username>`: Synchronize repositories in the target directory
  publicly owned (or watched if `-w` is used) by the specified user.

### General Options

* `--my-user`: The username to use when `-o` or `-c` are used. Must be used with
  `--my-token`. This overrides any other configuration set via global Git
  settings or environment variables.
* `--my-token`: The token to use when `-o` or `-c` are used. Must be used with
  `--my-user`. This overrides any other configuration set via global Git
  settings or environment variables.
* `--fetch, -f`: Use `git fetch` instead of `git pull` when updating.
* `--prepend-username, -r`: Prepend repositorys' usernames to the clone
  directory names. This is set by default when `-c`, `-u`, or `-w` are used.
* `--no-prepend-username, -R`: Don't prepend repositorys' usernames to the
  clone directory names.
* `--prepend-sep, -s`: The separator for the prepended username (defaults to
  `-`).

### Defaults

Running `hubsync` with no options is equivalent to the following:

    $ hubsync -oc .

## Automatic Synchronization via Crontab

HubSync can be automatically run via your crontab. An example template is
included in `doc/hubsync.crontab`.

## Other Repositories in the Target Directory

Other repositories in the target directory are left alone when running HubSync.
HubSync keeps a list of the repositories it manages in the target directory
(accessible in the `.hubsync` file at the root of the directory`), and only
those repositories are updated when running HubSync.

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
