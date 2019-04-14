#!/bin/bash

echo "Checking preact"

if preact --version > /dev/null; then
  echo "preact is already installed."
else
  echo "installing preact"
  if node -v > /dev/null; then
    if npm -v > /dev/null; then
      echo "installing preact - global"
      npm install -g preact
      npm install -g preact-cli
    else
      echo "npm is not installed"
    fi
  else
    echo "node is not installed"
  fi
fi