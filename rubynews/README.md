# rubynews - what's news in the ruby world? browse week by week - 30 channels, 940 items

* home  :: [github.com/planetruby/planet](https://github.com/planetruby/planet)
* bugs  :: [github.com/planetruby/planet/issues](https://github.com/planetruby/planet/issues)
* gem   :: [rubygems.org/gems/rubynews](https://rubygems.org/gems/rubynews)
* rdoc  :: [rubydoc.info/gems/rubynews](http://rubydoc.info/gems/rubynews)
* forum :: [groups.google.com/group/wwwmake](http://groups.google.com/group/wwwmake)


## Usage

rubynews is a command line tool that lets you browse ruby news week by week.
Type:

    $ rubynews

to run. Resulting in:

```
Welcome to Ruby News v1.0   (30 Channels, 940 Items)

Week 2/2020 - Mon, 06 Jan to Sun, 12 Jan   (3 Items)

  Sun, 12 Jan   >> eregon.me <<
    A Migration Path to Bundler 2+

  Sat, 11 Jan   >> weblog.rubyonrails.org <<
    This week in Rails - Deprecations, bugfixes and improvements!

  Thu, 09 Jan   >> www.ruby-toolbox.com <<
    Rubygem Release History Heatmaps

Week 1/2020 - Mon, 30 Dec to Sun, 05 Jan   (5 Items)

  Sun, 05 Jan   >> weblog.rubyonrails.org <<
    This week in Rails - The 2019 edition
                >> rubyinstaller.org <<
    RubyInstaller 2.7.0-1 released

  Fri, 03 Jan   >> railsgirlssummerofcode.org <<
    Submit Your Open Source Projects

  Thu, 02 Jan   >> planetruby.github.io <<
    Birmingham on Rails @ Birmingham, Alabama, United States - Ruby Conferences Update

  Wed, 01 Jan   >> sinatrarb.com <<
    Happy new year & Sinatra 2.0.8!

Week 52/2019 - Mon, 23 Dec to Sun, 29 Dec   (2 Items)

  Fri, 27 Dec   >> weblog.rubyonrails.org <<
    Ruby 2.7.0, Rails 6.0.2.1 and more

  Wed, 25 Dec   >> www.ruby-lang.org <<
    Ruby 2.7.0 Released

Week 51/2019 - Mon, 16 Dec to Sun, 22 Dec   (9 Items)

  Sat, 21 Dec   >> www.ruby-lang.org <<
    Ruby 2.7.0-rc2 Released

  Fri, 20 Dec   >> blog.rubygems.org <<
    3.1.2 Released

  Wed, 18 Dec   >> weblog.rubyonrails.org <<
    Rails 5.2.4.1 has been released!
    Rails 6.0.2.1 has been released!
                >> www.schneems.com <<
    The Curious Case of the Table-Locking UPDATE Query

  Tue, 17 Dec   >> www.ruby-lang.org <<
    Ruby 2.7.0-rc1 Released
                >> rubytuesday.katafrakt.me <<
    Issue #18

  Mon, 16 Dec   >> blog.rubygems.org <<
    3.1.1 Released
    3.1.0 Released
```

The rubynews command will fetch all built-in news feeds subscriptions
and store all news items in the single-file SQLite `news.db` in your home folder
under `.news/`.
Use the space bar to browse week-by-week
or press any other key to quit.


### Update All Feed Subscriptions

Note: rubynews has no auto-"magic" built-in feed subscription update. Type:

    $ rubynews update    # or
    $ rubynews up        # or
    $ rubynews u

to update all feed subscriptions "by hand". (Or schedule a daily, hourly, etc. cron job.)


## License

The `rubynews` scripts are dedicated to the public domain.
Use it as you please with no restrictions whatsoever.


## Questions? Comments?

Send them along to the [wwwmake Forum/Mailing List](http://groups.google.com/group/wwwmake).
Thanks!
