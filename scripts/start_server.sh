#! /bin/bash
echo "Running Bundle"
bundle install
echo "Precompling assetes"
rake asstes:precompile
echo "Run Migrations"
rake db:migrate
echo "Running the rails server on production env"
bin/rails s -b 0.0.0.0 -d -e production

