See the website [live](https://rails-stories.onrender.com).

## How to run

### Prerequisites

#### Ruby
- Install Ruby version manager: `brew install rbenv`
- Add `rbenv` to zsh so that it loads every time you open a terminal:
	- `echo 'if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi' >> ~/.zshrc`
	- `source ~/.zshrc`
- Install Ruby 2.6.6: `rbenv install 2.6.6`
- `rbenv` will automatically pick version 2.6.6 based on the `.ruby-version` file
- Confirm that `ruby -v` returns `ruby 2.6.6`

#### Node
- Install [Node version manager](https://github.com/nvm-sh/nvm)
- `nvm` will automatically pick version 16.15.1 based on the `.nvmrc` file
- Confirm that `node -v` returns `v16.15.1`

### Development
- Install the dependencies:
	- `bundle install`
	- `yarn install`
- Run migrations: `bundle exec rails db:migrate RAILS_ENV=development`
- Run the server: `RAILS_LOG_TO_STDOUT=true bundle exec rails server -p ${PORT:-3000} -e development`
- Visit the app at [http://localhost:3000/](http://localhost:3000/)

### Production
- Install the dependencies:
	- `bundle install`
	- `yarn install`
- Run migrations: `bundle exec rails db:migrate RAILS_ENV=production`
- Precompile assets: `bundle exec rails assets:precompile RAILS_ENV=production`
- Run the server: `RAILS_LOG_TO_STDOUT=true RAILS_SERVE_STATIC_FILES=true bundle exec rails server -p ${PORT:-3000} -e production`
- Visit the app at [http://localhost:3000/](http://localhost:3000/)
