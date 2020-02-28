# Planet Ruby News Reader Subscriptions - All The World's Ruby News Feeds


Feed list / configuration for Planet Ruby



## How To Add Your Feed  

Step 1: Add your feed to the feed list (that is, [planet.ini](planet.ini)).

Example:

```
[Ryan Davis]
  feed = http://blog.zenspider.com/atom.xml
```

Step 2: There's no Step 2 ;-).


That's it. Wait for the next update. Welcome on Planet Ruby.



## The State of Ruby Blogs and News - 36 Channels, 1464 Items

A little survery about the state of the ruby feed-iverse 
that includes personal blogs, ruby project news and more.

See the the feed list (that is, [planet.ini](planet.ini)) for all feeds included in the survey.


### Q: What's the update frequency of posts?

```
Update Frequency (Median)  (n=35)
---------------------------------
  <=   7 days  (17%) | ********** 6
  <=  14 days  (17%) | ********** 6
  <=  30 days  (11%) | ****** 4
  <=  90 days  (40%) | ************************ 14
  <= 180 days  (11%) | ****** 4
  <= 365 days  ( 2%) | * 1
```

### Q: What's the (post volume) break down by year, month, week?

```
By Year:
  year 2010: 32
  year 2011: 28
  year 2012: 20
  year 2013: 113
  year 2014: 70
  year 2015: 149
  year 2016: 251
  year 2017: 160
  year 2018: 240
  year 2019: 228
  year 2020: 47

By Month in 2020:
  month 1: 25
  month 2: 22

By Week in 2020:
  week  1:    5   - Mon Dec 30, 2019 to Sun Jan 05, 2020
  week  2:    5   - Mon Jan 06, 2020 to Sun Jan 12, 2020
  week  3:    5   - Mon Jan 13, 2020 to Sun Jan 19, 2020
  week  4:    6   - Mon Jan 20, 2020 to Sun Jan 26, 2020
  week  5:    6   - Mon Jan 27, 2020 to Sun Feb 02, 2020
  week  6:    7   - Mon Feb 03, 2020 to Sun Feb 09, 2020
  week  7:    1   - Mon Feb 10, 2020 to Sun Feb 16, 2020
  week  8:    9   - Mon Feb 17, 2020 to Sun Feb 23, 2020
  week  9:    3   - Mon Feb 24, 2020 to Sun Mar 01, 2020

This Year:    47
This Quartal: 47
This Month:   22
This Week:    3
```

### Q: What feed formats are in use?

```
Formats  (n=36)
---------------------------------
  atom        (63%) | ************************************* 23
  rss 2.0     (36%) | ********************* 13
```

### Q: What servers are in use?

```
Servers  (n=36)
---------------------------------
  GitHub.com  (33%) | ******************* 12
  nginx       (22%) | ************* 8
  Cowboy      (13%) | ******* 5
  Apache      (11%) | ****** 4
  cloudflare  ( 8%) | **** 3
  GSE         ( 5%) | *** 2
  Netlify     ( 5%) | *** 2
```

### Q: What (web site) publishing tools are in use?

```
Generators  (n=36)
---------------------------------
  ?           (61%) | ************************************ 22
  Jekyll      (25%) | *************** 9
  wordpress   ( 8%) | **** 3
  webgen      ( 2%) | * 1
  Ghost       ( 2%) | * 1
```

That's all for now. 



## Frequently Asked Questions (FAQ) and Answers

### Q: How do you determine the platform/publishing tool?

For now the script looks for the generator tag in the web feed 
(thus, it's missing in about half of the feeds or to be exact in 22, that is, 61%). See as an example in atom flavor (<https://gettalong.org/posts.atom>):

    <generator uri="http://webgen.gettalong.org/" version="1.6.0">
      webgen - Webgen::PathHandler::Feed
    </generator>

or in rss flavor (<https://developers.redhat.com/blog/author/vnmakarov/feed/>):

    <generator>https://wordpress.org/?v=5.1.4</generator>



## License

The planet scripts are dedicated to the public domain.
Use it as you please with no restrictions whatsoever.

## Questions? Comments?

Send them along to the [wwwmake Forum/Mailing List](http://groups.google.com/group/wwwmake).
Thanks!

