# TAMAGAussie
### A tamagotchi-style web-app using Australian Open Data

This project is built upon:
  - Ruby
  - _Add other stuff here_

See our presentation [here](https://docs.google.com/presentation/d/1srMlVyDjMdTk0IPZF_rylslNJ-Ira0jjxb4UmkoYwbU/pub?start=true&loop=false&delayms=3000)

### List of data sources and APIs used

This project has so far implemented:
  - [Google Places](https://developers.google.com/places/)
  - [Forecast.IO](http://forecast.io/)
  - [Twitter](https://dev.twitter.com/rest/public)
  
And plans to implement:
  - [Queensland Wildlife Data API](https://data.qld.gov.au/dataset/1337d9cd-cb0c-46c5-a1cc-44a6591a54aa)

## Getting started

After downloading the project (d'oh), you're going to need Ruby installed - This was developed using Ruby 2.x. After that, install the `bundler` gem, that will deal with our dependecies.

`gem install bundler`

After that, in the main directory, run `bundle install` and it install the dependecies for the project. Now, we need to setup the actual keys configuration file. For security, it is being ignored by Git and you will need to setup it manually.

`cp config/key-config-example.json key-config.json`

After that, change the data to match your server and API keys configuration.

Now, we have to setup the database tables. After updating your database details in `key-config.json`, our migration script will create the needed tables and relationships for you. Run:

`ruby migrations.rb`

in the main directory to get the tables setup to your database.


## LICENSE

This project is licensed under GNU General Public License (GPL-3). The full license text is available at `LICENSE`.

