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

### Frequently Asked Questions (FAQ) and Answers

#### Q: How can I browse / read all the Planet Ruby news?

Use your feed reader of choice :-). Options include:

For a command line version try `rubynews` that lets you browse week by week. See [`/rubynews`](/rubynews) on how to get started. 

Add your feed reader tool here!


#### Q: Can I get the feed list in the OPML (Outline Processor Markup Language) XML format?

Yes, you can. Use the [`opml.rb`](/script/opml.rb) script to generate an up-to-date version in the OPML format.
Example: 

    $ ruby script/opml.rb > planet.opml



## The State of Ruby Blogs and News - 51 Channels, 2548 Items

A little survery about the state of the ruby feed-iverse 
that includes personal blogs, ruby project news and more.

See the the feed list (that is, [planet.ini](planet.ini)) for all feeds included in the survey.


### Q: What are the top topics / words in headlines?

```
Top Words in Headlines 2020  (n=47)
---------------------------------
  rails           | ***************** 13
  ruby            | **************** 12
  conferences     | ******* 6
  dry             | ****** 5
  rom             | ***** 4
  ml              | ** 2
  rubymine        | ** 2

Top Words in Headlines 2019  (n=228)
---------------------------------
  rails           | ********************** 64
  ruby            | ************* 38
  rubymine        | ***** 16
  activerecord    | ** 8
  bundler         | * 5
  hanami          | * 5
  jruby           | * 5
  activemodel     | * 4
  jekyll          | * 4
  passenger       | * 4
  rgsoc           | * 4
  conferences     |  3
  rubyconf        |  3
  rubygems        |  3
  rubyinstaller   |  3
```

### Q: What are the top ruby versions in headlines?

```
Top Ruby Versions in Headlines 2020  (n=93)
----------------------------------------------
  ruby 2.7        | ************************************************************ 3

Top Ruby Versions in Headlines 2019  (n=412)
----------------------------------------------
  ruby 2.7        | ************************************* 12
  ruby 2.6        | ********* 3
  ruby 3.0        | ****** 2
  ruby 2.4        | *** 1
  ruby 2.5        | *** 1
```

### Q: What are the top rails versions in headlines?

```
Top Rails Versions in Headlines 2020  (n=93)
-----------------------------------------------
  rails 6.0       | ****************************** 1
  rails 6.1       | ****************************** 1

Top Rails Versions in Headlines 2019  (n=412)
-----------------------------------------------
  rails 6.0       | ******************************************************* 58
  rails 6.1       | ** 3
  rails 5.2       |  1
```


### Q: Where do Rubyists come from / What are the top countries for blogs?

```
Location  (n=18)
---------------------------------
  Australia       (16%) | ********* 3
  Austria         ( 5%) | *** 1
  Canada          ( 5%) | *** 1
  Croatia         ( 5%) | *** 1
  India           ( 5%) | *** 1
  Poland          (11%) | ****** 2
  Spain           ( 5%) | *** 1
  Switzerland     ( 5%) | *** 1
  Ukraine         ( 5%) | *** 1
  United States   (33%) | ******************* 6
```


### Q: What's the update frequency of posts?

```
Update Frequency (Median)  (n=49)
---------------------------------
  <=   7 days  (18%) | ********** 9
  <=  14 days  (18%) | ********** 9
  <=  30 days  (14%) | ******** 7
  <=  90 days  (32%) | ******************* 16
  <= 180 days  (12%) | ******* 6
  <= 365 days  ( 2%) | * 1
  above        ( 2%) | * 1
```

### Q: What's the (post volume) break down by year, month, week?

```
By Year:
  year 2010: 32
  year 2011: 66
  year 2012: 74
  year 2013: 169
  year 2014: 161
  year 2015: 237
  year 2016: 325
  year 2017: 262
  year 2018: 390
  year 2019: 454
  year 2020: 112

By Month in 2020:
  month 1: 45
  month 2: 47
  month 3: 20

By Week in 2020:
  week  1:    9   - Mon Dec 30, 2019 to Sun Jan 05, 2020
  week  2:    8   - Mon Jan 06, 2020 to Sun Jan 12, 2020
  week  3:    9   - Mon Jan 13, 2020 to Sun Jan 19, 2020
  week  4:   12   - Mon Jan 20, 2020 to Sun Jan 26, 2020
  week  5:   11   - Mon Jan 27, 2020 to Sun Feb 02, 2020
  week  6:   13   - Mon Feb 03, 2020 to Sun Feb 09, 2020
  week  7:    7   - Mon Feb 10, 2020 to Sun Feb 16, 2020
  week  8:   13   - Mon Feb 17, 2020 to Sun Feb 23, 2020
  week  9:   22   - Mon Feb 24, 2020 to Sun Mar 01, 2020
  week 10:    9   - Mon Mar 02, 2020 to Sun Mar 08, 2020

This Year:    112
This Quartal: 112
This Month:   20
This Week:    9
```

### Q: What feed formats are in use?

```
Formats  (n=51)
---------------------------------
  atom     (52%) | ▉▉▉▉▉▉▉▉▉▉▉▉▉▉▉▉▉▉▉▉▉▉▉▉▉▉▉▉▉▉▉▊ 27
  rss 2.0  (47%) | ▉▉▉▉▉▉▉▉▉▉▉▉▉▉▉▉▉▉▉▉▉▉▉▉▉▉▉▉▎ 24
```

### Q: What servers are in use?

```
Servers  (n=51)
---------------------------------
  GitHub.com  (23%) | ▉▉▉▉▉▉▉▉▉▉▉▉▉▉▏ 12
  Nginx       (17%) | ▉▉▉▉▉▉▉▉▉▉▋ 9
  Cloudflare  (15%) | ▉▉▉▉▉▉▉▉▉▍ 8
  Cowboy      (11%) | ▉▉▉▉▉▉▉▏ 6
  Netlify     ( 9%) | ▉▉▉▉▉▉ 5
  Apache      ( 7%) | ▉▉▉▉▊ 4
  Server      ( 5%) | ▉▉▉▋ 3
  GSE         ( 3%) | ▉▉▍ 2
  AmazonS3    ( 1%) | ▉▎ 1
  Simplecast  ( 1%) | ▉▎ 1
```

### Q: What (web site) publishing tools are in use?

```
Generators  (n=51)
---------------------------------
  ?           (58%) | ▉▉▉▉▉▉▉▉▉▉▉▉▉▉▉▉▉▉▉▉▉▉▉▉▉▉▉▉▉▉▉▉▉▉▉▎ 30
  Jekyll      (23%) | ▉▉▉▉▉▉▉▉▉▉▉▉▉▉▏ 12
  WordPress   ( 5%) | ▉▉▉▋ 3
  Ghost       ( 3%) | ▉▉▍ 2
  Hugo        ( 1%) | ▉▎ 1
  Transistor  ( 1%) | ▉▎ 1
  Webgen      ( 1%) | ▉▎ 1
  Simplecast  ( 1%) | ▉▎ 1
```

That's all for now. 



### Frequently Asked Questions (FAQ) and Answers   (Continued)

#### Q: How do you determine the publishing tool?

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

