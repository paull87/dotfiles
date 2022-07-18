#!/usr/bin/env bash

# Install dependenices
composer global require \
    laravel/valet \
    laravel/pint

# Install Valet
valet install
