#!/bin/bash

COMMIT_MSG=$(git log -1 --pretty=%B)

if [[ "$COMMIT_MSG" == *[release]* ]]; then
  if [ "${#RG_KEY}" -ne 32 ]; then
    echo -e "\e[31;1m[Error]\e[0m Invalid RubyGems API key" >&2
    exit 1
  fi
  echo -e "\e[36;1m[Info]\e[0m Publishing gem releases"
  echo "---" > $HOME/.gem/credentials
  echo ":rubygems_api_key: $RG_KEY" >> $HOME/.gem/credentials
  chmod 0600 $HOME/.gem/credentials
  for gem in *.gem; do
    if [ -r "$gem" ]; then
      echo -e "\e[36;1m[Info]\e[0m Pushing $gem" >&2
      gem push "$gem"
    fi
  done
else
  echo -e "\e[36;1m[Info]\e[0m Not publishing gems"
fi
