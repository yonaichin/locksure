pkill -f unicorn.rb
bundle exec unicorn -D -E production -c config/unicorn.rb
