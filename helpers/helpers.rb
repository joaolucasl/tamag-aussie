require 'json'

def internet?
  begin
    true if open('http://www.google.com')
  rescue
    false
  end
end

def get_key(type)
  return JSON.parse(
            File.read(
              File.join(
                File.dirname(File.dirname(File.absolute_path(__FILE__))),
                'config/keys.json'
              )
            )
          )['key'][type]
end
