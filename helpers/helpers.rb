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

def rater(distance)
  if distance > 5
    return -10
  elsif distance > 2
    return 0
  else
    return 10
  end
end
