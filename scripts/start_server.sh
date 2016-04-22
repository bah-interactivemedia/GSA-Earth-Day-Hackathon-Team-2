#! /bin/bash
echo "Running Bundle"
/home/ec2-user/.rbenv/versions/2.3.0/bin/bundle install
echo "Run Migrations"
/home/ec2-user/.rbenv/versions/2.3.0/bin/rake db:migrate
echo "Running the rails server on production env"
/home/ec2-user/.rbenv/versions/2.3.0/binrails s -b 0.0.0.0 -d

