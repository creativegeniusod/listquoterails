# Ruby on Rails Tutorial: quotesondesign application

This is the sample application for quotesondesign

In particular, to run this webapp, follow below steps on your local machine:

    cd working_directory
    git clone https://github.com/railstutorial/listquoterails.git
    cd listquoterails
    cp config/database.yml.example config/database.yml
    bundle install --without production
    bundle exec rake db:migrate
    bundle exec rake db:test:prepare
    bundle exec rspec spec/

To add data in database add cron : http://localhost:3000/cronadd
To See : http://localhost:3000/listquote

