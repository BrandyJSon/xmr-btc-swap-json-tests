#!/bin/bash

# run this script from the swap dir
# make sure you have sqlx-cli installed: cargo install --version 0.6.3 sqlx-cli
# it's advised for the sqlx-cli to be the same version as specified in cargo.toml

# this script creates a temporary sqlite database
# then runs the migration scripts to create the tables (migrations folder)
# then it prepares the offline sqlx-data.json rust mappings
DATABASE_URL=sqlite:tempdb cargo sqlx database create
DATABASE_URL=sqlite:tempdb cargo sqlx migrate run
# needs the absolute path here
# https://github.com/launchbadge/sqlx/issues/1399
DB_PATH=$(readlink -f tempdb)
DATABASE_URL="sqlite:$DB_PATH" cargo sqlx prepare -- --bin swap
