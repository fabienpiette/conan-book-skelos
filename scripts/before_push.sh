#!/bin/sh

bundle exec rubocop --auto-correct
bundle exec fasterer
# bundle update --patch --conservative <vulnerable-gem-name>
bundle audit check --update
bundle exec brakeman
