# PhotoJournal

PhotoJournal is a multiuser photo/description database. I have implemented the imgur API for easy and smooth image handling. The application is an extension of Lab 6 in Quinn Rohlf's section of Networks. It can be found deployed at photojournal-kohl.herokuapp.com

## Features

- Easy image upload to imgur
- Description and date available to describe each photo
- Multi-user support
- Items in the database can be removed if desired


## Use

1. Clone the repo
2. Edit `config/initializers/admin_users.rb` to reflect the admins google account info.
3. Set the `GOOGLE_CLIENT_ID`, `GOOGLE_CLIENT_SECRET`, `GITHUB_CLIENT_ID`, and `GITHUB_CLIENT_SECRET` environment variables with your GitHub and Google API credentials (if you're deploying to heroku, you'll need to set those on the server as well).
4. Install dependencies with `bundle install`
5. Create the database with `rake db:create db:migrate` (you will need to have postgres installed)
6. Run this app with `rackup` or `shotgun`

## Screenshots

