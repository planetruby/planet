

module RubyNews

class Tool
  def update
    News.subscribe(
      'http://www.ruby-lang.org/en/feeds/news.rss',     # Ruby Lang News
      'http://www.jruby.org/atom.xml',                  # JRuby Lang News
      'http://blog.rubygems.org/atom.xml',              # RubyGems News
      'http://bundler.io/blog/feed.xml',                # Bundler News
      'https://www.ruby-toolbox.com/blog.rss',          # Ruby Toolbox News
      'https://idiosyncratic-ruby.com/feed.xml',        # Idiosyncratic Ruby
      'http://weblog.rubyonrails.org/feed/atom.xml',    # Ruby on Rails News
      'http://sinatrarb.com/feed.xml',                  # Sinatra News
      'https://dry-rb.org/feed.xml',                    # DRY News
      'https://hanamirb.org/atom.xml',                  # Hanami News
      'http://jekyllrb.com/feed.xml',                   # Jekyll News
      'http://feeds.feedburner.com/jetbrains_rubymine?format=xml',  # RubyMine IDE News
      'https://blog.phusion.nl/rss/',                   # Phusion News
      'https://rubyinstaller.org/feed.xml',             # Ruby Installer for Windows News

      'http://planetruby.github.io/calendar/feed.xml',  # Ruby Conferences & Camps News
      'https://rubytogether.org/news.xml',              # Ruby Together News
      'https://foundation.travis-ci.org/feed.xml',      # Travis Foundation News
      'https://railsgirlssummerofcode.org/blog.xml',    # Rails Girls Summer of Code News

       ## Ruby People ++ Personal Blog / Website
      'http://blog.zenspider.com/atom.xml',          # Ryan Davis @ Seattle › Washington › United States
      'http://tenderlovemaking.com/atom.xml',        # Aaron Patterson @ Seattle › Washington › United States
      'http://blog.headius.com/feed.xml',            # Charles Nutter @ Richfield › Minnesota › United States
      'http://www.schneems.com/feed.xml',            # Richard Schneeman @ Austin › Texas › United States
      'https://developers.redhat.com/blog/author/vnmakarov/feed/',  # Vladimir Makarov @ Toronto › Canada

      'https://eregon.me/blog/feed.xml',             # Benoit Daloze @ Zürich › Switzerland
      'https://gettalong.org/posts.atom',            # Thomas Leitner @ Vienna • Wien › Austria
      'https://rubytuesday.katafrakt.me/feed.xml',   # Paweł Świątkowski @ Kraków, Poland
      'https://solnic.codes/feed/',                  # Piotr Solnica @ Kraków › Poland
      'https://zverok.github.io/feed.xml',           # Victor Shepelev @ Kharkiv › Ukraine

      'http://samsaffron.com/posts.rss',             # Sam Saffron @ Sydney › Australia
      'https://www.rubypigeon.com/feed.xml',         # Tom Dalling @ Melbourne› Australia
      )

    News.update
  end


  def banner
    puts "Welcome to Ruby News v#{VERSION}   (#{News.channels.count} Channels, #{News.items.count} Items)"
  end

  def list
    date = Date.today
    empty_week_counter = 0

    loop do
      week        = date.cweek
      year        = date.year
      week_start  = Date.commercial( year, week, 1 )
      week_end    = Date.commercial( year, week, 7 )

      count       = News.week(week, year).count
      if count == 0
        empty_week_counter += 1
      else
        empty_week_counter = 0
      end

      print
      print "Week #{week}/#{year} - "
      print "#{week_start.format('Mon, 02 Jan')} to "
      print "#{week_end.format('Mon, 02 Jan')}   "
      print "(#{count} Items)"
      print "\n"


      last_day  = nil
      last_host = nil    ## todo/fix: change to last_source_title or something??

      News.week(week, year).each do |item|
        if last_day != item.date.day
          puts
          print "  #{item.date.format( 'Mon, 02 Jan' )}   "
          print ">> #{item.feed.title || URI(item.feed.feed_url).host} <<"
          print "\n"
        elsif last_host != (item.feed.title || URI(item.feed.feed_url).host)
          print "                "
          ## note: print feed title and if missing fallback to feed host (from url) 
          ##  todo/fix:  check for feed location - if present add with @ !!!!
          print ">> #{item.feed.title || URI(item.feed.feed_url).host} <<"
          print "\n"
        else
        end

        puts "    #{item.title}"

        last_day  = item.date.day
        last_host = item.feed.title || URI(item.feed.feed_url).host
      end

      if count > 0 || empty_week_counter > 10
        puts
        print ">> Press space for more; press any key to quit. <<"
        ch = STDIN.getch
        print "\r"

        empty_week_counter = 0

        break if ch != ' '
      end
      date = week_start-1
    end

    print "                                                   "
    print "\n"

    puts ">> TIP: Type > rubyconf < to list all upcoming ruby conferences & camps in #{Date.today.year}. <<"
    puts
    puts "Bye"
  end
end  # class Tool


def self.main( args=ARGV )

  dbpath = "#{Env.home}/.news/news.db"
  #  puts "dbpath: >#{dbpath}<"

  FileUtils.mkdir_p( File.dirname(dbpath) )     ## make sure path exists!!

  News.config.database = { adapter:   'sqlite3',
                           database:  dbpath }

  tool =  Tool.new

  if args.empty? && News.items.count == 0    ## on first-time auto-update
    puts
    puts
    tool.banner
    puts
    puts ">> TIP: Type > rubynews update < to update all news feeds. <<"
    puts
    puts "First time? Do you want to update all news feeds now?"
    puts
    print ">> Press y for yes; press any key to continue. <<"
    ch = STDIN.getch
    print "\r"
    print "                                                   "
    print "\n"

    if ch == 'y' or ch == 'Y'
      tool.update
      puts
      puts
    end

    tool.list
  else

    if args.include?( 'u' ) ||
       args.include?( 'up' )  ||
       args.include?( 'update' )
       puts
       puts
       tool.banner
       puts
       tool.update
    else
      puts
      puts ">> TIP: Type > rubynews update < to update all news feeds. <<"
      puts
      puts
      ## todo/fix:  add Last update on ??? --
      ##  add to News module use News.date ?
      ##                   or use News.last_updated / last_update / last_fetch / fetched

      tool.banner
      puts
      tool.list
    end
  end
end  #   method self.main
end  # module RubyNews
