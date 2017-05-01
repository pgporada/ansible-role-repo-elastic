# Overview: ansible-role-repo-elastic
This role will install the Elastic repository on your system.

- - - -
# Variables

Set the `major.minor` version of the repository to install

    elastic_major_minor_version: 5.x

- - - -
# How to hack away at this role
Before submitting a PR, please create a test and run it through test-kitchen.

You will need to have at least Ruby 2.x, probably through rbenv, and Bundler.

    git clone git@bitbucket.org:greenlancer/ansible-role-repo-elastic.git
    bundle install
    bundle update
    bundle exec kitchen create
    bundle exec kitchen converge
    bundle exec kitchen verify
    bundle exec kitchen destroy

- - - -
# Theme Music
[The Mad Conductor - Starry Safari](https://www.youtube.com/watch?v=VdPlkEJpXGU)
