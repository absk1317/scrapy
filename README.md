A simple image parsing utility tool.
Built with help of Ruby and Nokogiri.

The codebase follows modular approach, with each module having specific set of responsibilities.
For specs, requests to external websites are blocked, and requests to a specific web address 'test.com' has been mocked with a dummy html.

The rake task can be run as below:

rake find_images\[http://google.com\] # please note the escape character, should work without them in bash, but has problems in zsh and fish etc.

Exceptions while accessing non existing web addresses have been caught, and returned as a warning message.
