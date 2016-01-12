# Requires open-uri so we can open URL's as if they were files.
# http://ruby-doc.org/stdlib-2.2.2/libdoc/open-uri/rdoc/OpenURI.html
require 'open-uri'
# http://ruby-doc.org/stdlib-2.0.0/libdoc/json/rdoc/JSON.html
require 'json'

# First, let's pick a URL to test.
# In this case, we'll be using jsonplaceholder as they provide some simple resources for us to use! Check them out at http://jsonplaceholder.typicode.com
url = 'http://jsonplaceholder.typicode.com/users'

# Now let's use the open and read methods to actually fetch the data we want. This comes back as a string.
data = open(url).read

# It's easier to manipulate this data if it's an array. Let's do that now!
data = JSON.parse(data)

#So now we have our data, which in this example is user data. We can do whatever we want with it, like so:
data.each do |user|
  puts user["name"], user["email"]
  puts "\n"
end

#How cool is that? In < 10 lines, we've extracted JSON data and can manipulate it as we wish.
