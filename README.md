See the website [live](https://rails-portfolio-wfe5.onrender.com/).

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

#### Python
- Install Python version manager: `brew install pyenv`
- Add `pyenv` to zsh so that it loads every time you open a terminal:
	- `echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.zshrc`
	- `echo 'command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.zshrc`
	- `echo 'eval "$(pyenv init -)"' >> ~/.zshrc`
	- `source ~/.zshrc`
- Install Python 2.7.18: `pyenv install 2.7.18`
- `pyenv` will automatically pick version 2.7.18 based on the `.python-version` file
- Confirm that `python -V` returns `Python 2.7.18`

#### Node
- Install [Node version manager](https://github.com/nvm-sh/nvm)
- `nvm` will automatically pick version 16.15.1 based on the `.nvmrc` file
- Confirm that `node -v` returns `v16.15.1`

### Install dependencies and run the app
- Install the dependencies:
	- `bundle install`
	- `yarn install`
- Run migrations: `bundle exec rails db:migrate`
- Run the server: `bundle exec rails server -p 5000 -e development`
- Visit the app at [127.0.0.1:5000](http://127.0.0.1:5000/)
