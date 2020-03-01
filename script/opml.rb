#####
#   generate feed list in opml (xml) format from ini

require 'iniparser'     ## 3rd party gem - use $ gem install iniparser

require 'date'          ## stdlibs
require 'time'
require 'cgi'

def escape(text) CGI::escapeHTML( text ); end



path = ARGV[0] || './planet.ini'
hash = INI.load_file( path )


head = ""
body = ""

hash.each do |k,v|
  if v.is_a?( String )
      if k == 'title'
        head << "    <title>#{escape(v)}</title>"
      else
        STDERR.puts "!! WARN - skipping unknown property >#{k}< >#{v}<"
      end
  else  ## assume value is Hash
    line =  "    "
    line << "<outline"
    line << " text=\"#{escape(k)}\""
    line << " type=\"rss\""
    line << " xmlUrl=\"#{escape(v['feed'])}\""
    line << "/>"

    body << "\n"     unless body.empty?
    body << line
  end
end

xml =<<XML
<opml version="2.0">
  <head>
#{head}
    <dateCreated>#{Time.now.utc.rfc822}</dateCreated>
  </head>
  <body>
#{body}
  </body>
</opml>
XML

puts xml
