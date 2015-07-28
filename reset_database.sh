#!/bin/bash

rake db:drop && rake db:create && mysql --user=root --database=ssm_website_development < db/development_snapshot.SQL
