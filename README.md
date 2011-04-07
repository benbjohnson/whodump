whodump - A command line interface for checking domain name availability.
=========================================================================

## DESCRIPTION

Whodump is a command line tool that accepts a list of domain names through
STDIN and checks for their availability using the Whois protocol. A list of
available domains are returned.

Whodump follows the rules of [Semantic Versioning](http://semver.org/).


## INSTALL

Whodump is easy to install using RubyGems:

	$ [sudo] gem install whodump


## GETTING STARTED

To use `whodump`, simply pass in a list of domain separated by new line
characters into the standard input like this:

	$ cat my_domain_list.txt | whodump


## DISCUSS

If you want to submit an awesome idea or defect, use the following options:

* Submit a defect to the Issues list on the GitHub project page.
* Send an e-mail to [whodump@librelist.com](mailto://whodump@librelist.com)
  to join the mailing list.


## CONTRIBUTE

Send a pull request with some sweet code! However, if you're sending code,
please add RSpec tests and use a named branch. Thanks!
