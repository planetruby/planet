# stdlibs
require 'io/console'

# 3rd party libs / gems
require 'pluto/news'


# our own code
require 'rubynews/version'   # note: let version always go first
require 'rubynews/tool'


# say hello
puts RubyNews.banner    if defined?( $RUBYLIBS_DEBUG )
