require 'active_record'
require 'json'

module DB

  def self.Connect
    begin
      fs = File.read('./config/key-config.json')
      dbConfig = JSON.parse(fs)["database"]

      puts dbConfig


      ActiveRecord::Base.establish_connection(
        :adapter => dbConfig["dialect"],
        :host => dbConfig["url"],
        :username => dbConfig["user"],
        :password => dbConfig["pwd"],
        :port => dbConfig["port"],
        :database => dbConfig["database"]
      )

     ActiveRecord::Base.logger = Logger.new(STDOUT)

      return ActiveRecord::Base.connection
    end
  end
end
