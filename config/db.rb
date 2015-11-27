require 'activerecord'
require 'json'

module DB

  def self.Connect
    begin
      fs = File.read('key-config.json')
      dbConfig = JSON.parse(fs);

      ActiveRecord::Base.establish_connection(
        :adapter => dbConfig["dialect"],
        :host => dbConfig["url"],
        :username => dbConfig["user"],
        :password => dbConfig["pwd"],
        :database => dbConfig["database"]
      )

      return ActiveRecord::Base.connection
    end
