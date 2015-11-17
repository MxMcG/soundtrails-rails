require 'json'
# artist search

ARTIST_DATA = {"resultsPage"=>
  {"status"=>"ok",
   "results"=>
    {"artist"=>
      [{"onTourUntil"=>"2016-05-27",
        "identifier"=>
         [{"setlistsHref"=>
            "http://api.songkick.com/api/3.0/artists/mbid:dbf44fed-7445-4808-ae8a-c5c4cf5f529d/setlists.json",
           "href"=>
            "http://api.songkick.com/api/3.0/artists/mbid:dbf44fed-7445-4808-ae8a-c5c4cf5f529d.json",
           "mbid"=>"dbf44fed-7445-4808-ae8a-c5c4cf5f529d",
           "eventsHref"=>
            "http://api.songkick.com/api/3.0/artists/mbid:dbf44fed-7445-4808-ae8a-c5c4cf5f529d/calendar.json"}],
        "displayName"=>"Tribal Seeds",
        "uri"=>
         "http://www.songkick.com/artists/538550-tribal-seeds?utm_source=36827&utm_medium=partner",
        "id"=>538550},
       {"onTourUntil"=>"2015-10-30",
        "identifier"=>[],
        "displayName"=>"Gonzo of Tribal Seeds",
        "uri"=>
         "http://www.songkick.com/artists/8297438-gonzo-of-tribal-seeds?utm_source=36827&utm_medium=partner",
        "id"=>8297438},
       {"identifier"=>[],
        "onTourUntil"=>nil,
        "uri"=>
         "http://www.songkick.com/artists/5180748-dreadlocks-ft-tribal-seeds?utm_source=36827&utm_medium=partner",
        "displayName"=>"Dreadlocks Ft. Tribal Seeds",
        "id"=>5180748}]},
   "perPage"=>50,
   "page"=>1,
   "totalEntries"=>3}}




"################################################################################"



# Calendar

CALENDAR_DATA = {"resultsPage"=>
  {"status"=>"ok",
   "results"=>
    {"event"=>
      [{"displayName"=>"Tribal Seeds at Royal Tahitien (December 4, 2015)",
        "type"=>"Concert",
        "status"=>"ok",
        "ageRestriction"=>nil,
        "start"=>
         {"time"=>"18:00:00",
          "datetime"=>"2015-12-04T18:00:00-1100",
          "date"=>"2015-12-04"},
        "performance"=>
         [{"billingIndex"=>1,
           "displayName"=>"Tribal Seeds",
           "artist"=>
            {"identifier"=>
              [{"href"=>
                 "http://api.songkick.com/api/3.0/artists/mbid:dbf44fed-7445-4808-ae8a-c5c4cf5f529d.json",
                "mbid"=>"dbf44fed-7445-4808-ae8a-c5c4cf5f529d"}],
             "displayName"=>"Tribal Seeds",
             "uri"=>
              "http://www.songkick.com/artists/538550-tribal-seeds?utm_source=36827&utm_medium=partner",
             "id"=>538550},
           "billing"=>"headline",
           "id"=>49423614}],
        "location"=>
         {"city"=>"Papeete, French Polynesia",
          "lat"=>-17.5516251,
          "lng"=>-149.5584758},
        "venue"=>
         {"displayName"=>"Royal Tahitien",
          "metroArea"=>
           {"displayName"=>"Papeete",
            "uri"=>
             "http://www.songkick.com/metro_areas/33550-french-polynesia-papeete?utm_source=36827&utm_medium=partner",
            "id"=>33550,
            "country"=>{"displayName"=>"French Polynesia"}},
          "lat"=>-17.5516251,
          "lng"=>-149.5584758,
          "uri"=>
           "http://www.songkick.com/venues/3125579-royal-tahitien?utm_source=36827&utm_medium=partner",
          "id"=>3125579},
        "uri"=>
         "http://www.songkick.com/concerts/25157904-tribal-seeds-at-royal-tahitien?utm_source=36827&utm_medium=partner",
        "id"=>25157904,
        "popularity"=>0.017175},
       {"displayName"=>
         "Tribal Seeds with The Skints and The Steppas at Majestic Ventura Theater (January 7, 2016)",
        "type"=>"Concert",
        "status"=>"ok",
        "ageRestriction"=>nil,
        "start"=>
         {"time"=>"19:00:00",
          "datetime"=>"2016-01-07T19:00:00-0800",
          "date"=>"2016-01-07"},
        "performance"=>
         [{"billingIndex"=>1,
           "displayName"=>"Tribal Seeds",
           "artist"=>
            {"identifier"=>
              [{"href"=>
                 "http://api.songkick.com/api/3.0/artists/mbid:dbf44fed-7445-4808-ae8a-c5c4cf5f529d.json",
                "mbid"=>"dbf44fed-7445-4808-ae8a-c5c4cf5f529d"}],
             "displayName"=>"Tribal Seeds",
             "uri"=>
              "http://www.songkick.com/artists/538550-tribal-seeds?utm_source=36827&utm_medium=partner",
             "id"=>538550},
           "billing"=>"headline",
           "id"=>49223784},
          {"billingIndex"=>2,
           "displayName"=>"The Skints",
           "artist"=>
            {"identifier"=>
              [{"href"=>
                 "http://api.songkick.com/api/3.0/artists/mbid:7a279145-e778-4099-8f73-ea917a1956c9.json",
                "mbid"=>"7a279145-e778-4099-8f73-ea917a1956c9"}],
             "displayName"=>"The Skints",
             "uri"=>
              "http://www.songkick.com/artists/330879-skints?utm_source=36827&utm_medium=partner",
             "id"=>330879},
           "billing"=>"support",
           "id"=>49223789},
          {"billingIndex"=>3,
           "displayName"=>"The Steppas",
           "artist"=>
            {"identifier"=>
              [{"href"=>
                 "http://api.songkick.com/api/3.0/artists/mbid:e1a2eafa-3530-4293-a321-905407180620.json",
                "mbid"=>"e1a2eafa-3530-4293-a321-905407180620"}],
             "displayName"=>"The Steppas",
             "uri"=>
              "http://www.songkick.com/artists/6317464-steppas?utm_source=36827&utm_medium=partner",
             "id"=>6317464},
           "billing"=>"support",
           "id"=>49223794}],
        "location"=>
         {"city"=>"Ventura, CA, US", "lat"=>34.2804444, "lng"=>-119.2914354},
        "venue"=>
         {"displayName"=>"Majestic Ventura Theater",
          "metroArea"=>
           {"displayName"=>"Los Angeles",
            "uri"=>
             "http://www.songkick.com/metro_areas/17835-us-los-angeles?utm_source=36827&utm_medium=partner",
            "id"=>17835,
            "state"=>{"displayName"=>"CA"},
            "country"=>{"displayName"=>"US"}},
          "lat"=>34.2804444,
          "lng"=>-119.2914354,
          "uri"=>
           "http://www.songkick.com/venues/13452-majestic-ventura-theater?utm_source=36827&utm_medium=partner",
          "id"=>13452},
        "uri"=>
         "http://www.songkick.com/concerts/25043404-tribal-seeds-at-majestic-ventura-theater?utm_source=36827&utm_medium=partner",
        "id"=>25043404,
        "popularity"=>0.017153},
       {"displayName"=>
         "Tribal Seeds with The Steppas and The Skints at Majestic Ventura Theater (January 7, 2016)",
        "type"=>"Concert",
        "status"=>"ok",
        "ageRestriction"=>nil,
        "start"=>
         {"time"=>"20:00:00",
          "datetime"=>"2016-01-07T20:00:00-0800",
          "date"=>"2016-01-07"},
        "performance"=>
         [{"billingIndex"=>1,
           "displayName"=>"Tribal Seeds",
           "artist"=>
            {"identifier"=>
              [{"href"=>
                 "http://api.songkick.com/api/3.0/artists/mbid:dbf44fed-7445-4808-ae8a-c5c4cf5f529d.json",
                "mbid"=>"dbf44fed-7445-4808-ae8a-c5c4cf5f529d"}],
             "displayName"=>"Tribal Seeds",
             "uri"=>
              "http://www.songkick.com/artists/538550-tribal-seeds?utm_source=36827&utm_medium=partner",
             "id"=>538550},
           "billing"=>"headline",
           "id"=>49250349},
          {"billingIndex"=>2,
           "displayName"=>"The Steppas",
           "artist"=>
            {"identifier"=>
              [{"href"=>
                 "http://api.songkick.com/api/3.0/artists/mbid:e1a2eafa-3530-4293-a321-905407180620.json",
                "mbid"=>"e1a2eafa-3530-4293-a321-905407180620"}],
             "displayName"=>"The Steppas",
             "uri"=>
              "http://www.songkick.com/artists/6317464-steppas?utm_source=36827&utm_medium=partner",
             "id"=>6317464},
           "billing"=>"support",
           "id"=>49250354},
          {"billingIndex"=>3,
           "displayName"=>"The Skints",
           "artist"=>
            {"identifier"=>
              [{"href"=>
                 "http://api.songkick.com/api/3.0/artists/mbid:7a279145-e778-4099-8f73-ea917a1956c9.json",
                "mbid"=>"7a279145-e778-4099-8f73-ea917a1956c9"}],
             "displayName"=>"The Skints",
             "uri"=>
              "http://www.songkick.com/artists/330879-skints?utm_source=36827&utm_medium=partner",
             "id"=>330879},
           "billing"=>"support",
           "id"=>49250359}],
        "location"=>
         {"city"=>"Ventura, CA, US", "lat"=>34.2804444, "lng"=>-119.2914354},
        "venue"=>
         {"displayName"=>"Majestic Ventura Theater",
          "metroArea"=>
           {"displayName"=>"Los Angeles",
            "uri"=>
             "http://www.songkick.com/metro_areas/17835-us-los-angeles?utm_source=36827&utm_medium=partner",
            "id"=>17835,
            "state"=>{"displayName"=>"CA"},
            "country"=>{"displayName"=>"US"}},
          "lat"=>34.2804444,
          "lng"=>-119.2914354,
          "uri"=>
           "http://www.songkick.com/venues/13452-majestic-ventura-theater?utm_source=36827&utm_medium=partner",
          "id"=>13452},
        "uri"=>
         "http://www.songkick.com/concerts/25059274-tribal-seeds-at-majestic-ventura-theater?utm_source=36827&utm_medium=partner",
        "id"=>25059274,
        "popularity"=>0.017151},
       {"displayName"=>
         "Tribal Seeds with The Skints and The Steppas at The Catalyst (January 8, 2016)",
        "type"=>"Concert",
        "status"=>"ok",
        "ageRestriction"=>"All",
        "start"=>
         {"time"=>"19:00:00",
          "datetime"=>"2016-01-08T19:00:00-0800",
          "date"=>"2016-01-08"},
        "performance"=>
         [{"billingIndex"=>1,
           "displayName"=>"Tribal Seeds",
           "artist"=>
            {"identifier"=>
              [{"href"=>
                 "http://api.songkick.com/api/3.0/artists/mbid:dbf44fed-7445-4808-ae8a-c5c4cf5f529d.json",
                "mbid"=>"dbf44fed-7445-4808-ae8a-c5c4cf5f529d"}],
             "displayName"=>"Tribal Seeds",
             "uri"=>
              "http://www.songkick.com/artists/538550-tribal-seeds?utm_source=36827&utm_medium=partner",
             "id"=>538550},
           "billing"=>"headline",
           "id"=>49223799},
          {"billingIndex"=>2,
           "displayName"=>"The Skints",
           "artist"=>
            {"identifier"=>
              [{"href"=>
                 "http://api.songkick.com/api/3.0/artists/mbid:7a279145-e778-4099-8f73-ea917a1956c9.json",
                "mbid"=>"7a279145-e778-4099-8f73-ea917a1956c9"}],
             "displayName"=>"The Skints",
             "uri"=>
              "http://www.songkick.com/artists/330879-skints?utm_source=36827&utm_medium=partner",
             "id"=>330879},
           "billing"=>"support",
           "id"=>49223804},
          {"billingIndex"=>3,
           "displayName"=>"The Steppas",
           "artist"=>
            {"identifier"=>
              [{"href"=>
                 "http://api.songkick.com/api/3.0/artists/mbid:e1a2eafa-3530-4293-a321-905407180620.json",
                "mbid"=>"e1a2eafa-3530-4293-a321-905407180620"}],
             "displayName"=>"The Steppas",
             "uri"=>
              "http://www.songkick.com/artists/6317464-steppas?utm_source=36827&utm_medium=partner",
             "id"=>6317464},
           "billing"=>"support",
           "id"=>49223809}],
        "location"=>
         {"city"=>"Santa Cruz, CA, US",
          "lat"=>36.9713724,
          "lng"=>-122.0255391},
        "venue"=>
         {"displayName"=>"The Catalyst",
          "metroArea"=>
           {"displayName"=>"SF Bay Area",
            "uri"=>
             "http://www.songkick.com/metro_areas/26330-us-sf-bay-area?utm_source=36827&utm_medium=partner",
            "id"=>26330,
            "state"=>{"displayName"=>"CA"},
            "country"=>{"displayName"=>"US"}},
          "lat"=>36.9713724,
          "lng"=>-122.0255391,
          "uri"=>
           "http://www.songkick.com/venues/1092-catalyst?utm_source=36827&utm_medium=partner",
          "id"=>1092},
        "uri"=>
         "http://www.songkick.com/concerts/25043409-tribal-seeds-at-catalyst?utm_source=36827&utm_medium=partner",
        "id"=>25043409,
        "popularity"=>0.017153},
       {"displayName"=>
         "Tribal Seeds with The Skints and The Steppas at The Catalyst (January 9, 2016)",
        "type"=>"Concert",
        "status"=>"ok",
        "ageRestriction"=>nil,
        "start"=>
         {"time"=>"19:00:00",
          "datetime"=>"2016-01-09T19:00:00-0800",
          "date"=>"2016-01-09"},
        "performance"=>
         [{"billingIndex"=>1,
           "displayName"=>"Tribal Seeds",
           "artist"=>
            {"identifier"=>
              [{"href"=>
                 "http://api.songkick.com/api/3.0/artists/mbid:dbf44fed-7445-4808-ae8a-c5c4cf5f529d.json",
                "mbid"=>"dbf44fed-7445-4808-ae8a-c5c4cf5f529d"}],
             "displayName"=>"Tribal Seeds",
             "uri"=>
              "http://www.songkick.com/artists/538550-tribal-seeds?utm_source=36827&utm_medium=partner",
             "id"=>538550},
           "billing"=>"headline",
           "id"=>49223879},
          {"billingIndex"=>2,
           "displayName"=>"The Skints",
           "artist"=>
            {"identifier"=>
              [{"href"=>
                 "http://api.songkick.com/api/3.0/artists/mbid:7a279145-e778-4099-8f73-ea917a1956c9.json",
                "mbid"=>"7a279145-e778-4099-8f73-ea917a1956c9"}],
             "displayName"=>"The Skints",
             "uri"=>
              "http://www.songkick.com/artists/330879-skints?utm_source=36827&utm_medium=partner",
             "id"=>330879},
           "billing"=>"support",
           "id"=>49223884},
          {"billingIndex"=>3,
           "displayName"=>"The Steppas",
           "artist"=>
            {"identifier"=>
              [{"href"=>
                 "http://api.songkick.com/api/3.0/artists/mbid:e1a2eafa-3530-4293-a321-905407180620.json",
                "mbid"=>"e1a2eafa-3530-4293-a321-905407180620"}],
             "displayName"=>"The Steppas",
             "uri"=>
              "http://www.songkick.com/artists/6317464-steppas?utm_source=36827&utm_medium=partner",
             "id"=>6317464},
           "billing"=>"support",
           "id"=>49223889}],
        "location"=>
         {"city"=>"Santa Cruz, CA, US",
          "lat"=>36.9713724,
          "lng"=>-122.0255391},
        "venue"=>
         {"displayName"=>"The Catalyst",
          "metroArea"=>
           {"displayName"=>"SF Bay Area",
            "uri"=>
             "http://www.songkick.com/metro_areas/26330-us-sf-bay-area?utm_source=36827&utm_medium=partner",
            "id"=>26330,
            "state"=>{"displayName"=>"CA"},
            "country"=>{"displayName"=>"US"}},
          "lat"=>36.9713724,
          "lng"=>-122.0255391,
          "uri"=>
           "http://www.songkick.com/venues/1092-catalyst?utm_source=36827&utm_medium=partner",
          "id"=>1092},
        "uri"=>
         "http://www.songkick.com/concerts/25043464-tribal-seeds-at-catalyst?utm_source=36827&utm_medium=partner",
        "id"=>25043464,
        "popularity"=>0.017153},
       {"displayName"=>
         "Tribal Seeds with The Skints and The Steppas at Ace of Spades (January 10, 2016)",
        "type"=>"Concert",
        "status"=>"ok",
        "ageRestriction"=>nil,
        "start"=>
         {"time"=>"19:00:00",
          "datetime"=>"2016-01-10T19:00:00-0800",
          "date"=>"2016-01-10"},
        "performance"=>
         [{"billingIndex"=>1,
           "displayName"=>"Tribal Seeds",
           "artist"=>
            {"identifier"=>
              [{"href"=>
                 "http://api.songkick.com/api/3.0/artists/mbid:dbf44fed-7445-4808-ae8a-c5c4cf5f529d.json",
                "mbid"=>"dbf44fed-7445-4808-ae8a-c5c4cf5f529d"}],
             "displayName"=>"Tribal Seeds",
             "uri"=>
              "http://www.songkick.com/artists/538550-tribal-seeds?utm_source=36827&utm_medium=partner",
             "id"=>538550},
           "billing"=>"headline",
           "id"=>49223899},
          {"billingIndex"=>2,
           "displayName"=>"The Skints",
           "artist"=>
            {"identifier"=>
              [{"href"=>
                 "http://api.songkick.com/api/3.0/artists/mbid:7a279145-e778-4099-8f73-ea917a1956c9.json",
                "mbid"=>"7a279145-e778-4099-8f73-ea917a1956c9"}],
             "displayName"=>"The Skints",
             "uri"=>
              "http://www.songkick.com/artists/330879-skints?utm_source=36827&utm_medium=partner",
             "id"=>330879},
           "billing"=>"support",
           "id"=>49223904},
          {"billingIndex"=>3,
           "displayName"=>"The Steppas",
           "artist"=>
            {"identifier"=>
              [{"href"=>
                 "http://api.songkick.com/api/3.0/artists/mbid:e1a2eafa-3530-4293-a321-905407180620.json",
                "mbid"=>"e1a2eafa-3530-4293-a321-905407180620"}],
             "displayName"=>"The Steppas",
             "uri"=>
              "http://www.songkick.com/artists/6317464-steppas?utm_source=36827&utm_medium=partner",
             "id"=>6317464},
           "billing"=>"support",
           "id"=>49223909}],
        "location"=>
         {"city"=>"Sacramento, CA, US", "lat"=>38.5699036, "lng"=>-121.490972},
        "venue"=>
         {"displayName"=>"Ace of Spades",
          "metroArea"=>
           {"displayName"=>"Sacramento",
            "uri"=>
             "http://www.songkick.com/metro_areas/14039-us-sacramento?utm_source=36827&utm_medium=partner",
            "id"=>14039,
            "state"=>{"displayName"=>"CA"},
            "country"=>{"displayName"=>"US"}},
          "lat"=>38.5699036,
          "lng"=>-121.490972,
          "uri"=>
           "http://www.songkick.com/venues/1181206-ace-of-spades?utm_source=36827&utm_medium=partner",
          "id"=>1181206},
        "uri"=>
         "http://www.songkick.com/concerts/25043474-tribal-seeds-at-ace-of-spades?utm_source=36827&utm_medium=partner",
        "id"=>25043474,
        "popularity"=>0.017153},
       {"displayName"=>
         "Tribal Seeds with The Skints and The Steppas at Knitting Factory Concert House (January 13, 2016)",
        "type"=>"Concert",
        "status"=>"ok",
        "ageRestriction"=>nil,
        "start"=>
         {"time"=>"19:00:00",
          "datetime"=>"2016-01-13T19:00:00-0800",
          "date"=>"2016-01-13"},
        "performance"=>
         [{"billingIndex"=>1,
           "displayName"=>"Tribal Seeds",
           "artist"=>
            {"identifier"=>
              [{"href"=>
                 "http://api.songkick.com/api/3.0/artists/mbid:dbf44fed-7445-4808-ae8a-c5c4cf5f529d.json",
                "mbid"=>"dbf44fed-7445-4808-ae8a-c5c4cf5f529d"}],
             "displayName"=>"Tribal Seeds",
             "uri"=>
              "http://www.songkick.com/artists/538550-tribal-seeds?utm_source=36827&utm_medium=partner",
             "id"=>538550},
           "billing"=>"headline",
           "id"=>49223914},
          {"billingIndex"=>2,
           "displayName"=>"The Skints",
           "artist"=>
            {"identifier"=>
              [{"href"=>
                 "http://api.songkick.com/api/3.0/artists/mbid:7a279145-e778-4099-8f73-ea917a1956c9.json",
                "mbid"=>"7a279145-e778-4099-8f73-ea917a1956c9"}],
             "displayName"=>"The Skints",
             "uri"=>
              "http://www.songkick.com/artists/330879-skints?utm_source=36827&utm_medium=partner",
             "id"=>330879},
           "billing"=>"support",
           "id"=>49223919},
          {"billingIndex"=>3,
           "displayName"=>"The Steppas",
           "artist"=>
            {"identifier"=>
              [{"href"=>
                 "http://api.songkick.com/api/3.0/artists/mbid:e1a2eafa-3530-4293-a321-905407180620.json",
                "mbid"=>"e1a2eafa-3530-4293-a321-905407180620"}],
             "displayName"=>"The Steppas",
             "uri"=>
              "http://www.songkick.com/artists/6317464-steppas?utm_source=36827&utm_medium=partner",
             "id"=>6317464},
           "billing"=>"support",
           "id"=>49223924}],
        "location"=>
         {"city"=>"Reno, NV, US", "lat"=>39.5272694, "lng"=>-119.813555},
        "venue"=>
         {"displayName"=>"Knitting Factory Concert House",
          "metroArea"=>
           {"displayName"=>"Reno",
            "uri"=>
             "http://www.songkick.com/metro_areas/13455-us-reno?utm_source=36827&utm_medium=partner",
            "id"=>13455,
            "state"=>{"displayName"=>"NV"},
            "country"=>{"displayName"=>"US"}},
          "lat"=>39.5272694,
          "lng"=>-119.813555,
          "uri"=>
           "http://www.songkick.com/venues/590661-knitting-factory-concert-house?utm_source=36827&utm_medium=partner",
          "id"=>590661},
        "uri"=>
         "http://www.songkick.com/concerts/25043479-tribal-seeds-at-knitting-factory-concert-house?utm_source=36827&utm_medium=partner",
        "id"=>25043479,
        "popularity"=>0.017153},
       {"displayName"=>
         "Tribal Seeds with The Skints and The Steppas at McNear's Mystic Theatre (January 14, 2016)",
        "type"=>"Concert",
        "status"=>"ok",
        "ageRestriction"=>nil,
        "start"=>
         {"time"=>"19:00:00",
          "datetime"=>"2016-01-14T19:00:00-0800",
          "date"=>"2016-01-14"},
        "performance"=>
         [{"billingIndex"=>1,
           "displayName"=>"Tribal Seeds",
           "artist"=>
            {"identifier"=>
              [{"href"=>
                 "http://api.songkick.com/api/3.0/artists/mbid:dbf44fed-7445-4808-ae8a-c5c4cf5f529d.json",
                "mbid"=>"dbf44fed-7445-4808-ae8a-c5c4cf5f529d"}],
             "displayName"=>"Tribal Seeds",
             "uri"=>
              "http://www.songkick.com/artists/538550-tribal-seeds?utm_source=36827&utm_medium=partner",
             "id"=>538550},
           "billing"=>"headline",
           "id"=>49223929},
          {"billingIndex"=>2,
           "displayName"=>"The Skints",
           "artist"=>
            {"identifier"=>
              [{"href"=>
                 "http://api.songkick.com/api/3.0/artists/mbid:7a279145-e778-4099-8f73-ea917a1956c9.json",
                "mbid"=>"7a279145-e778-4099-8f73-ea917a1956c9"}],
             "displayName"=>"The Skints",
             "uri"=>
              "http://www.songkick.com/artists/330879-skints?utm_source=36827&utm_medium=partner",
             "id"=>330879},
           "billing"=>"support",
           "id"=>49223934},
          {"billingIndex"=>3,
           "displayName"=>"The Steppas",
           "artist"=>
            {"identifier"=>
              [{"href"=>
                 "http://api.songkick.com/api/3.0/artists/mbid:e1a2eafa-3530-4293-a321-905407180620.json",
                "mbid"=>"e1a2eafa-3530-4293-a321-905407180620"}],
             "displayName"=>"The Steppas",
             "uri"=>
              "http://www.songkick.com/artists/6317464-steppas?utm_source=36827&utm_medium=partner",
             "id"=>6317464},
           "billing"=>"support",
           "id"=>49223939}],
        "location"=>
         {"city"=>"Petaluma, CA, US", "lat"=>38.2333799, "lng"=>-122.6400988},
        "venue"=>
         {"displayName"=>"McNear's Mystic Theatre",
          "metroArea"=>
           {"displayName"=>"Santa Rosa",
            "uri"=>
             "http://www.songkick.com/metro_areas/5308-us-santa-rosa?utm_source=36827&utm_medium=partner",
            "id"=>5308,
            "state"=>{"displayName"=>"CA"},
            "country"=>{"displayName"=>"US"}},
          "lat"=>38.2333799,
          "lng"=>-122.6400988,
          "uri"=>
           "http://www.songkick.com/venues/9969-mcnears-mystic-theatre?utm_source=36827&utm_medium=partner",
          "id"=>9969},
        "uri"=>
         "http://www.songkick.com/concerts/25043484-tribal-seeds-at-mcnears-mystic-theatre?utm_source=36827&utm_medium=partner",
        "id"=>25043484,
        "popularity"=>0.017153},
       {"displayName"=>
         "Tribal Seeds with The Skints and The Steppas at Senator Theatre (January 15, 2016)",
        "type"=>"Concert",
        "status"=>"ok",
        "ageRestriction"=>nil,
        "start"=>
         {"time"=>"19:00:00",
          "datetime"=>"2016-01-15T19:00:00-0800",
          "date"=>"2016-01-15"},
        "performance"=>
         [{"billingIndex"=>1,
           "displayName"=>"Tribal Seeds",
           "artist"=>
            {"identifier"=>
              [{"href"=>
                 "http://api.songkick.com/api/3.0/artists/mbid:dbf44fed-7445-4808-ae8a-c5c4cf5f529d.json",
                "mbid"=>"dbf44fed-7445-4808-ae8a-c5c4cf5f529d"}],
             "displayName"=>"Tribal Seeds",
             "uri"=>
              "http://www.songkick.com/artists/538550-tribal-seeds?utm_source=36827&utm_medium=partner",
             "id"=>538550},
           "billing"=>"headline",
           "id"=>49223954},
          {"billingIndex"=>2,
           "displayName"=>"The Skints",
           "artist"=>
            {"identifier"=>
              [{"href"=>
                 "http://api.songkick.com/api/3.0/artists/mbid:7a279145-e778-4099-8f73-ea917a1956c9.json",
                "mbid"=>"7a279145-e778-4099-8f73-ea917a1956c9"}],
             "displayName"=>"The Skints",
             "uri"=>
              "http://www.songkick.com/artists/330879-skints?utm_source=36827&utm_medium=partner",
             "id"=>330879},
           "billing"=>"support",
           "id"=>49223959},
          {"billingIndex"=>3,
           "displayName"=>"The Steppas",
           "artist"=>
            {"identifier"=>
              [{"href"=>
                 "http://api.songkick.com/api/3.0/artists/mbid:e1a2eafa-3530-4293-a321-905407180620.json",
                "mbid"=>"e1a2eafa-3530-4293-a321-905407180620"}],
             "displayName"=>"The Steppas",
             "uri"=>
              "http://www.songkick.com/artists/6317464-steppas?utm_source=36827&utm_medium=partner",
             "id"=>6317464},
           "billing"=>"support",
           "id"=>49223964}],
        "location"=>
         {"city"=>"Chico, CA, US", "lat"=>39.7280344, "lng"=>-121.8375227},
        "venue"=>
         {"displayName"=>"Senator Theatre",
          "metroArea"=>
           {"displayName"=>"Sacramento",
            "uri"=>
             "http://www.songkick.com/metro_areas/14039-us-sacramento?utm_source=36827&utm_medium=partner",
            "id"=>14039,
            "state"=>{"displayName"=>"CA"},
            "country"=>{"displayName"=>"US"}},
          "lat"=>39.7280344,
          "lng"=>-121.8375227,
          "uri"=>
           "http://www.songkick.com/venues/1470-senator-theatre?utm_source=36827&utm_medium=partner",
          "id"=>1470},
        "uri"=>
         "http://www.songkick.com/concerts/25043499-tribal-seeds-at-senator-theatre?utm_source=36827&utm_medium=partner",
        "id"=>25043499,
        "popularity"=>0.017153},
       {"displayName"=>
         "Tribal Seeds with The Skints and The Steppas at Mateel Community Center (January 16, 2016)",
        "type"=>"Concert",
        "status"=>"ok",
        "ageRestriction"=>nil,
        "start"=>
         {"time"=>"19:00:00",
          "datetime"=>"2016-01-16T19:00:00-0800",
          "date"=>"2016-01-16"},
        "performance"=>
         [{"billingIndex"=>1,
           "displayName"=>"Tribal Seeds",
           "artist"=>
            {"identifier"=>
              [{"href"=>
                 "http://api.songkick.com/api/3.0/artists/mbid:dbf44fed-7445-4808-ae8a-c5c4cf5f529d.json",
                "mbid"=>"dbf44fed-7445-4808-ae8a-c5c4cf5f529d"}],
             "displayName"=>"Tribal Seeds",
             "uri"=>
              "http://www.songkick.com/artists/538550-tribal-seeds?utm_source=36827&utm_medium=partner",
             "id"=>538550},
           "billing"=>"headline",
           "id"=>49224059},
          {"billingIndex"=>2,
           "displayName"=>"The Skints",
           "artist"=>
            {"identifier"=>
              [{"href"=>
                 "http://api.songkick.com/api/3.0/artists/mbid:7a279145-e778-4099-8f73-ea917a1956c9.json",
                "mbid"=>"7a279145-e778-4099-8f73-ea917a1956c9"}],
             "displayName"=>"The Skints",
             "uri"=>
              "http://www.songkick.com/artists/330879-skints?utm_source=36827&utm_medium=partner",
             "id"=>330879},
           "billing"=>"support",
           "id"=>49224064},
          {"billingIndex"=>3,
           "displayName"=>"The Steppas",
           "artist"=>
            {"identifier"=>
              [{"href"=>
                 "http://api.songkick.com/api/3.0/artists/mbid:e1a2eafa-3530-4293-a321-905407180620.json",
                "mbid"=>"e1a2eafa-3530-4293-a321-905407180620"}],
             "displayName"=>"The Steppas",
             "uri"=>
              "http://www.songkick.com/artists/6317464-steppas?utm_source=36827&utm_medium=partner",
             "id"=>6317464},
           "billing"=>"support",
           "id"=>49224069}],
        "location"=>
         {"city"=>"Redway, CA, US", "lat"=>40.1201301, "lng"=>-123.8220909},
        "venue"=>
         {"displayName"=>"Mateel Community Center",
          "metroArea"=>
           {"displayName"=>"Redway",
            "uri"=>
             "http://www.songkick.com/metro_areas/57627-us-redway?utm_source=36827&utm_medium=partner",
            "id"=>57627,
            "state"=>{"displayName"=>"CA"},
            "country"=>{"displayName"=>"US"}},
          "lat"=>40.1201301,
          "lng"=>-123.8220909,
          "uri"=>
           "http://www.songkick.com/venues/69751-mateel-community-center?utm_source=36827&utm_medium=partner",
          "id"=>69751},
        "uri"=>
         "http://www.songkick.com/concerts/25043584-tribal-seeds-at-mateel-community-center?utm_source=36827&utm_medium=partner",
        "id"=>25043584,
        "popularity"=>0.017153},
       {"displayName"=>
         "Tribal Seeds with The Skints and The Steppas at The Midtown (January 17, 2016)",
        "type"=>"Concert",
        "status"=>"ok",
        "ageRestriction"=>nil,
        "start"=>
         {"time"=>"19:00:00",
          "datetime"=>"2016-01-17T19:00:00-0800",
          "date"=>"2016-01-17"},
        "performance"=>
         [{"billingIndex"=>1,
           "displayName"=>"Tribal Seeds",
           "artist"=>
            {"identifier"=>
              [{"href"=>
                 "http://api.songkick.com/api/3.0/artists/mbid:dbf44fed-7445-4808-ae8a-c5c4cf5f529d.json",
                "mbid"=>"dbf44fed-7445-4808-ae8a-c5c4cf5f529d"}],
             "displayName"=>"Tribal Seeds",
             "uri"=>
              "http://www.songkick.com/artists/538550-tribal-seeds?utm_source=36827&utm_medium=partner",
             "id"=>538550},
           "billing"=>"headline",
           "id"=>49224104},
          {"billingIndex"=>2,
           "displayName"=>"The Skints",
           "artist"=>
            {"identifier"=>
              [{"href"=>
                 "http://api.songkick.com/api/3.0/artists/mbid:7a279145-e778-4099-8f73-ea917a1956c9.json",
                "mbid"=>"7a279145-e778-4099-8f73-ea917a1956c9"}],
             "displayName"=>"The Skints",
             "uri"=>
              "http://www.songkick.com/artists/330879-skints?utm_source=36827&utm_medium=partner",
             "id"=>330879},
           "billing"=>"support",
           "id"=>49224109},
          {"billingIndex"=>3,
           "displayName"=>"The Steppas",
           "artist"=>
            {"identifier"=>
              [{"href"=>
                 "http://api.songkick.com/api/3.0/artists/mbid:e1a2eafa-3530-4293-a321-905407180620.json",
                "mbid"=>"e1a2eafa-3530-4293-a321-905407180620"}],
             "displayName"=>"The Steppas",
             "uri"=>
              "http://www.songkick.com/artists/6317464-steppas?utm_source=36827&utm_medium=partner",
             "id"=>6317464},
           "billing"=>"support",
           "id"=>49224114}],
        "location"=>
         {"city"=>"Bend, OR, US", "lat"=>44.0597876, "lng"=>-121.3083028},
        "venue"=>
         {"displayName"=>"The Midtown",
          "metroArea"=>
           {"displayName"=>"Salem",
            "uri"=>
             "http://www.songkick.com/metro_areas/10501-us-salem?utm_source=36827&utm_medium=partner",
            "id"=>10501,
            "state"=>{"displayName"=>"OR"},
            "country"=>{"displayName"=>"US"}},
          "lat"=>44.0597876,
          "lng"=>-121.3083028,
          "uri"=>
           "http://www.songkick.com/venues/2910-midtown?utm_source=36827&utm_medium=partner",
          "id"=>2910},
        "uri"=>
         "http://www.songkick.com/concerts/25043614-tribal-seeds-at-midtown?utm_source=36827&utm_medium=partner",
        "id"=>25043614,
        "popularity"=>0.017153},
       {"displayName"=>
         "Tribal Seeds with The Skints and The Steppas at McMenamin's Crystal Ballroom (January 20, 2016)",
        "type"=>"Concert",
        "status"=>"ok",
        "ageRestriction"=>nil,
        "start"=>
         {"time"=>"19:00:00",
          "datetime"=>"2016-01-20T19:00:00-0800",
          "date"=>"2016-01-20"},
        "performance"=>
         [{"billingIndex"=>1,
           "displayName"=>"Tribal Seeds",
           "artist"=>
            {"identifier"=>
              [{"href"=>
                 "http://api.songkick.com/api/3.0/artists/mbid:dbf44fed-7445-4808-ae8a-c5c4cf5f529d.json",
                "mbid"=>"dbf44fed-7445-4808-ae8a-c5c4cf5f529d"}],
             "displayName"=>"Tribal Seeds",
             "uri"=>
              "http://www.songkick.com/artists/538550-tribal-seeds?utm_source=36827&utm_medium=partner",
             "id"=>538550},
           "billing"=>"headline",
           "id"=>49224134},
          {"billingIndex"=>2,
           "displayName"=>"The Skints",
           "artist"=>
            {"identifier"=>
              [{"href"=>
                 "http://api.songkick.com/api/3.0/artists/mbid:7a279145-e778-4099-8f73-ea917a1956c9.json",
                "mbid"=>"7a279145-e778-4099-8f73-ea917a1956c9"}],
             "displayName"=>"The Skints",
             "uri"=>
              "http://www.songkick.com/artists/330879-skints?utm_source=36827&utm_medium=partner",
             "id"=>330879},
           "billing"=>"support",
           "id"=>49224139},
          {"billingIndex"=>3,
           "displayName"=>"The Steppas",
           "artist"=>
            {"identifier"=>
              [{"href"=>
                 "http://api.songkick.com/api/3.0/artists/mbid:e1a2eafa-3530-4293-a321-905407180620.json",
                "mbid"=>"e1a2eafa-3530-4293-a321-905407180620"}],
             "displayName"=>"The Steppas",
             "uri"=>
              "http://www.songkick.com/artists/6317464-steppas?utm_source=36827&utm_medium=partner",
             "id"=>6317464},
           "billing"=>"support",
           "id"=>49224144}],
        "location"=>
         {"city"=>"Portland, OR, US", "lat"=>45.5229001, "lng"=>-122.6847806},
        "venue"=>
         {"displayName"=>"McMenamin's Crystal Ballroom",
          "metroArea"=>
           {"displayName"=>"Portland",
            "uri"=>
             "http://www.songkick.com/metro_areas/12283-us-portland?utm_source=36827&utm_medium=partner",
            "id"=>12283,
            "state"=>{"displayName"=>"OR"},
            "country"=>{"displayName"=>"US"}},
          "lat"=>45.5229001,
          "lng"=>-122.6847806,
          "uri"=>
           "http://www.songkick.com/venues/1228-mcmenamins-crystal-ballroom?utm_source=36827&utm_medium=partner",
          "id"=>1228},
        "uri"=>
         "http://www.songkick.com/concerts/25043629-tribal-seeds-at-mcmenamins-crystal-ballroom?utm_source=36827&utm_medium=partner",
        "id"=>25043629,
        "popularity"=>0.017153},
       {"displayName"=>
         "Tribal Seeds with The Skints and The Steppas at The Showbox (January 21, 2016)",
        "type"=>"Concert",
        "status"=>"ok",
        "ageRestriction"=>nil,
        "start"=>
         {"time"=>"19:00:00",
          "datetime"=>"2016-01-21T19:00:00-0800",
          "date"=>"2016-01-21"},
        "performance"=>
         [{"billingIndex"=>1,
           "displayName"=>"Tribal Seeds",
           "artist"=>
            {"identifier"=>
              [{"href"=>
                 "http://api.songkick.com/api/3.0/artists/mbid:dbf44fed-7445-4808-ae8a-c5c4cf5f529d.json",
                "mbid"=>"dbf44fed-7445-4808-ae8a-c5c4cf5f529d"}],
             "displayName"=>"Tribal Seeds",
             "uri"=>
              "http://www.songkick.com/artists/538550-tribal-seeds?utm_source=36827&utm_medium=partner",
             "id"=>538550},
           "billing"=>"headline",
           "id"=>49202329},
          {"billingIndex"=>2,
           "displayName"=>"The Skints",
           "artist"=>
            {"identifier"=>
              [{"href"=>
                 "http://api.songkick.com/api/3.0/artists/mbid:7a279145-e778-4099-8f73-ea917a1956c9.json",
                "mbid"=>"7a279145-e778-4099-8f73-ea917a1956c9"}],
             "displayName"=>"The Skints",
             "uri"=>
              "http://www.songkick.com/artists/330879-skints?utm_source=36827&utm_medium=partner",
             "id"=>330879},
           "billing"=>"support",
           "id"=>49241179},
          {"billingIndex"=>3,
           "displayName"=>"The Steppas",
           "artist"=>
            {"identifier"=>
              [{"href"=>
                 "http://api.songkick.com/api/3.0/artists/mbid:e1a2eafa-3530-4293-a321-905407180620.json",
                "mbid"=>"e1a2eafa-3530-4293-a321-905407180620"}],
             "displayName"=>"The Steppas",
             "uri"=>
              "http://www.songkick.com/artists/6317464-steppas?utm_source=36827&utm_medium=partner",
             "id"=>6317464},
           "billing"=>"support",
           "id"=>49241184}],
        "location"=>
         {"city"=>"Seattle, WA, US", "lat"=>47.6087897, "lng"=>-122.3399932},
        "venue"=>
         {"displayName"=>"The Showbox",
          "metroArea"=>
           {"displayName"=>"Seattle",
            "uri"=>
             "http://www.songkick.com/metro_areas/2846-us-seattle?utm_source=36827&utm_medium=partner",
            "id"=>2846,
            "state"=>{"displayName"=>"WA"},
            "country"=>{"displayName"=>"US"}},
          "lat"=>47.6087897,
          "lng"=>-122.3399932,
          "uri"=>
           "http://www.songkick.com/venues/5621-showbox?utm_source=36827&utm_medium=partner",
          "id"=>5621},
        "uri"=>
         "http://www.songkick.com/concerts/25030629-tribal-seeds-at-showbox?utm_source=36827&utm_medium=partner",
        "id"=>25030629,
        "popularity"=>0.017151},
       {"displayName"=>
         "Tribal Seeds with The Skints and The Steppas at Biltmore Cabaret (January 22, 2016)",
        "type"=>"Concert",
        "status"=>"ok",
        "ageRestriction"=>"19+",
        "start"=>
         {"time"=>"18:30:00",
          "datetime"=>"2016-01-22T18:30:00-0800",
          "date"=>"2016-01-22"},
        "performance"=>
         [{"billingIndex"=>1,
           "displayName"=>"Tribal Seeds",
           "artist"=>
            {"identifier"=>
              [{"href"=>
                 "http://api.songkick.com/api/3.0/artists/mbid:dbf44fed-7445-4808-ae8a-c5c4cf5f529d.json",
                "mbid"=>"dbf44fed-7445-4808-ae8a-c5c4cf5f529d"}],
             "displayName"=>"Tribal Seeds",
             "uri"=>
              "http://www.songkick.com/artists/538550-tribal-seeds?utm_source=36827&utm_medium=partner",
             "id"=>538550},
           "billing"=>"headline",
           "id"=>49224204},
          {"billingIndex"=>2,
           "displayName"=>"The Skints",
           "artist"=>
            {"identifier"=>
              [{"href"=>
                 "http://api.songkick.com/api/3.0/artists/mbid:7a279145-e778-4099-8f73-ea917a1956c9.json",
                "mbid"=>"7a279145-e778-4099-8f73-ea917a1956c9"}],
             "displayName"=>"The Skints",
             "uri"=>
              "http://www.songkick.com/artists/330879-skints?utm_source=36827&utm_medium=partner",
             "id"=>330879},
           "billing"=>"support",
           "id"=>49224209},
          {"billingIndex"=>3,
           "displayName"=>"The Steppas",
           "artist"=>
            {"identifier"=>
              [{"href"=>
                 "http://api.songkick.com/api/3.0/artists/mbid:e1a2eafa-3530-4293-a321-905407180620.json",
                "mbid"=>"e1a2eafa-3530-4293-a321-905407180620"}],
             "displayName"=>"The Steppas",
             "uri"=>
              "http://www.songkick.com/artists/6317464-steppas?utm_source=36827&utm_medium=partner",
             "id"=>6317464},
           "billing"=>"support",
           "id"=>49224214}],
        "location"=>
         {"city"=>"Vancouver, BC, Canada",
          "lat"=>49.2603613,
          "lng"=>-123.0963097},
        "venue"=>
         {"displayName"=>"Biltmore Cabaret",
          "metroArea"=>
           {"displayName"=>"Vancouver",
            "uri"=>
             "http://www.songkick.com/metro_areas/27398-canada-vancouver?utm_source=36827&utm_medium=partner",
            "id"=>27398,
            "state"=>{"displayName"=>"BC"},
            "country"=>{"displayName"=>"Canada"}},
          "lat"=>49.2603613,
          "lng"=>-123.0963097,
          "uri"=>
           "http://www.songkick.com/venues/32018-biltmore-cabaret?utm_source=36827&utm_medium=partner",
          "id"=>32018},
        "uri"=>
         "http://www.songkick.com/concerts/25043654-tribal-seeds-at-biltmore-cabaret?utm_source=36827&utm_medium=partner",
        "id"=>25043654,
        "popularity"=>0.017162},
       {"displayName"=>
         "Tribal Seeds with The Skints and The Steppas at Knitting Factory Concert House (January 23, 2016)",
        "type"=>"Concert",
        "status"=>"ok",
        "ageRestriction"=>nil,
        "start"=>
         {"time"=>"19:00:00",
          "datetime"=>"2016-01-23T19:00:00-0800",
          "date"=>"2016-01-23"},
        "performance"=>
         [{"billingIndex"=>1,
           "displayName"=>"Tribal Seeds",
           "artist"=>
            {"identifier"=>
              [{"href"=>
                 "http://api.songkick.com/api/3.0/artists/mbid:dbf44fed-7445-4808-ae8a-c5c4cf5f529d.json",
                "mbid"=>"dbf44fed-7445-4808-ae8a-c5c4cf5f529d"}],
             "displayName"=>"Tribal Seeds",
             "uri"=>
              "http://www.songkick.com/artists/538550-tribal-seeds?utm_source=36827&utm_medium=partner",
             "id"=>538550},
           "billing"=>"headline",
           "id"=>49224229},
          {"billingIndex"=>2,
           "displayName"=>"The Skints",
           "artist"=>
            {"identifier"=>
              [{"href"=>
                 "http://api.songkick.com/api/3.0/artists/mbid:7a279145-e778-4099-8f73-ea917a1956c9.json",
                "mbid"=>"7a279145-e778-4099-8f73-ea917a1956c9"}],
             "displayName"=>"The Skints",
             "uri"=>
              "http://www.songkick.com/artists/330879-skints?utm_source=36827&utm_medium=partner",
             "id"=>330879},
           "billing"=>"support",
           "id"=>49224234},
          {"billingIndex"=>3,
           "displayName"=>"The Steppas",
           "artist"=>
            {"identifier"=>
              [{"href"=>
                 "http://api.songkick.com/api/3.0/artists/mbid:e1a2eafa-3530-4293-a321-905407180620.json",
                "mbid"=>"e1a2eafa-3530-4293-a321-905407180620"}],
             "displayName"=>"The Steppas",
             "uri"=>
              "http://www.songkick.com/artists/6317464-steppas?utm_source=36827&utm_medium=partner",
             "id"=>6317464},
           "billing"=>"support",
           "id"=>49224239}],
        "location"=>
         {"city"=>"Spokane, WA, US", "lat"=>47.6569974, "lng"=>-117.4260252},
        "venue"=>
         {"displayName"=>"Knitting Factory Concert House",
          "metroArea"=>
           {"displayName"=>"Spokane",
            "uri"=>
             "http://www.songkick.com/metro_areas/8230-us-spokane?utm_source=36827&utm_medium=partner",
            "id"=>8230,
            "state"=>{"displayName"=>"WA"},
            "country"=>{"displayName"=>"US"}},
          "lat"=>47.6569974,
          "lng"=>-117.4260252,
          "uri"=>
           "http://www.songkick.com/venues/31807-knitting-factory-concert-house?utm_source=36827&utm_medium=partner",
          "id"=>31807},
        "uri"=>
         "http://www.songkick.com/concerts/25043664-tribal-seeds-at-knitting-factory-concert-house?utm_source=36827&utm_medium=partner",
        "id"=>25043664,
        "popularity"=>0.017153},
       {"displayName"=>
         "Tribal Seeds with The Skints and The Steppas at Knitting Factory (January 24, 2016)",
        "type"=>"Concert",
        "status"=>"ok",
        "ageRestriction"=>nil,
        "start"=>
         {"time"=>"19:00:00",
          "datetime"=>"2016-01-24T19:00:00-0700",
          "date"=>"2016-01-24"},
        "performance"=>
         [{"billingIndex"=>1,
           "displayName"=>"Tribal Seeds",
           "artist"=>
            {"identifier"=>
              [{"href"=>
                 "http://api.songkick.com/api/3.0/artists/mbid:dbf44fed-7445-4808-ae8a-c5c4cf5f529d.json",
                "mbid"=>"dbf44fed-7445-4808-ae8a-c5c4cf5f529d"}],
             "displayName"=>"Tribal Seeds",
             "uri"=>
              "http://www.songkick.com/artists/538550-tribal-seeds?utm_source=36827&utm_medium=partner",
             "id"=>538550},
           "billing"=>"headline",
           "id"=>49224254},
          {"billingIndex"=>2,
           "displayName"=>"The Skints",
           "artist"=>
            {"identifier"=>
              [{"href"=>
                 "http://api.songkick.com/api/3.0/artists/mbid:7a279145-e778-4099-8f73-ea917a1956c9.json",
                "mbid"=>"7a279145-e778-4099-8f73-ea917a1956c9"}],
             "displayName"=>"The Skints",
             "uri"=>
              "http://www.songkick.com/artists/330879-skints?utm_source=36827&utm_medium=partner",
             "id"=>330879},
           "billing"=>"support",
           "id"=>49224259},
          {"billingIndex"=>3,
           "displayName"=>"The Steppas",
           "artist"=>
            {"identifier"=>
              [{"href"=>
                 "http://api.songkick.com/api/3.0/artists/mbid:e1a2eafa-3530-4293-a321-905407180620.json",
                "mbid"=>"e1a2eafa-3530-4293-a321-905407180620"}],
             "displayName"=>"The Steppas",
             "uri"=>
              "http://www.songkick.com/artists/6317464-steppas?utm_source=36827&utm_medium=partner",
             "id"=>6317464},
           "billing"=>"support",
           "id"=>49224264}],
        "location"=>
         {"city"=>"Boise, ID, US", "lat"=>43.6131935, "lng"=>-116.2073485},
        "venue"=>
         {"displayName"=>"Knitting Factory",
          "metroArea"=>
           {"displayName"=>"Boise",
            "uri"=>
             "http://www.songkick.com/metro_areas/24581-us-boise?utm_source=36827&utm_medium=partner",
            "id"=>24581,
            "state"=>{"displayName"=>"ID"},
            "country"=>{"displayName"=>"US"}},
          "lat"=>43.6131935,
          "lng"=>-116.2073485,
          "uri"=>
           "http://www.songkick.com/venues/28692-knitting-factory?utm_source=36827&utm_medium=partner",
          "id"=>28692},
        "uri"=>
         "http://www.songkick.com/concerts/25043679-tribal-seeds-at-knitting-factory?utm_source=36827&utm_medium=partner",
        "id"=>25043679,
        "popularity"=>0.017153},
       {"displayName"=>
         "Tribal Seeds with The Skints and The Steppas at Top Hat Lounge (January 26, 2016)",
        "type"=>"Concert",
        "status"=>"ok",
        "ageRestriction"=>nil,
        "start"=>
         {"time"=>"19:00:00",
          "datetime"=>"2016-01-26T19:00:00-0700",
          "date"=>"2016-01-26"},
        "performance"=>
         [{"billingIndex"=>1,
           "displayName"=>"Tribal Seeds",
           "artist"=>
            {"identifier"=>
              [{"href"=>
                 "http://api.songkick.com/api/3.0/artists/mbid:dbf44fed-7445-4808-ae8a-c5c4cf5f529d.json",
                "mbid"=>"dbf44fed-7445-4808-ae8a-c5c4cf5f529d"}],
             "displayName"=>"Tribal Seeds",
             "uri"=>
              "http://www.songkick.com/artists/538550-tribal-seeds?utm_source=36827&utm_medium=partner",
             "id"=>538550},
           "billing"=>"headline",
           "id"=>49224364},
          {"billingIndex"=>2,
           "displayName"=>"The Skints",
           "artist"=>
            {"identifier"=>
              [{"href"=>
                 "http://api.songkick.com/api/3.0/artists/mbid:7a279145-e778-4099-8f73-ea917a1956c9.json",
                "mbid"=>"7a279145-e778-4099-8f73-ea917a1956c9"}],
             "displayName"=>"The Skints",
             "uri"=>
              "http://www.songkick.com/artists/330879-skints?utm_source=36827&utm_medium=partner",
             "id"=>330879},
           "billing"=>"support",
           "id"=>49224369},
          {"billingIndex"=>3,
           "displayName"=>"The Steppas",
           "artist"=>
            {"identifier"=>
              [{"href"=>
                 "http://api.songkick.com/api/3.0/artists/mbid:e1a2eafa-3530-4293-a321-905407180620.json",
                "mbid"=>"e1a2eafa-3530-4293-a321-905407180620"}],
             "displayName"=>"The Steppas",
             "uri"=>
              "http://www.songkick.com/artists/6317464-steppas?utm_source=36827&utm_medium=partner",
             "id"=>6317464},
           "billing"=>"support",
           "id"=>49224374}],
        "location"=>
         {"city"=>"Missoula, MT, US", "lat"=>46.870816, "lng"=>-113.995971},
        "venue"=>
         {"displayName"=>"Top Hat Lounge",
          "metroArea"=>
           {"displayName"=>"Spokane",
            "uri"=>
             "http://www.songkick.com/metro_areas/8230-us-spokane?utm_source=36827&utm_medium=partner",
            "id"=>8230,
            "state"=>{"displayName"=>"WA"},
            "country"=>{"displayName"=>"US"}},
          "lat"=>46.870816,
          "lng"=>-113.995971,
          "uri"=>
           "http://www.songkick.com/venues/2564134-top-hat-lounge?utm_source=36827&utm_medium=partner",
          "id"=>2564134},
        "uri"=>
         "http://www.songkick.com/concerts/25043734-tribal-seeds-at-top-hat-lounge?utm_source=36827&utm_medium=partner",
        "id"=>25043734,
        "popularity"=>0.017153},
       {"displayName"=>
         "Tribal Seeds with The Skints and The Steppas at Pink Garter Theatre (January 27, 2016)",
        "type"=>"Concert",
        "status"=>"ok",
        "ageRestriction"=>nil,
        "start"=>
         {"time"=>"19:00:00",
          "datetime"=>"2016-01-27T19:00:00-0700",
          "date"=>"2016-01-27"},
        "performance"=>
         [{"billingIndex"=>1,
           "displayName"=>"Tribal Seeds",
           "artist"=>
            {"identifier"=>
              [{"href"=>
                 "http://api.songkick.com/api/3.0/artists/mbid:dbf44fed-7445-4808-ae8a-c5c4cf5f529d.json",
                "mbid"=>"dbf44fed-7445-4808-ae8a-c5c4cf5f529d"}],
             "displayName"=>"Tribal Seeds",
             "uri"=>
              "http://www.songkick.com/artists/538550-tribal-seeds?utm_source=36827&utm_medium=partner",
             "id"=>538550},
           "billing"=>"headline",
           "id"=>49224389},
          {"billingIndex"=>2,
           "displayName"=>"The Skints",
           "artist"=>
            {"identifier"=>
              [{"href"=>
                 "http://api.songkick.com/api/3.0/artists/mbid:7a279145-e778-4099-8f73-ea917a1956c9.json",
                "mbid"=>"7a279145-e778-4099-8f73-ea917a1956c9"}],
             "displayName"=>"The Skints",
             "uri"=>
              "http://www.songkick.com/artists/330879-skints?utm_source=36827&utm_medium=partner",
             "id"=>330879},
           "billing"=>"support",
           "id"=>49224394},
          {"billingIndex"=>3,
           "displayName"=>"The Steppas",
           "artist"=>
            {"identifier"=>
              [{"href"=>
                 "http://api.songkick.com/api/3.0/artists/mbid:e1a2eafa-3530-4293-a321-905407180620.json",
                "mbid"=>"e1a2eafa-3530-4293-a321-905407180620"}],
             "displayName"=>"The Steppas",
             "uri"=>
              "http://www.songkick.com/artists/6317464-steppas?utm_source=36827&utm_medium=partner",
             "id"=>6317464},
           "billing"=>"support",
           "id"=>49224399}],
        "location"=>
         {"city"=>"Jackson Hole, WY, US", "lat"=>43.4793, "lng"=>-110.763},
        "venue"=>
         {"displayName"=>"Pink Garter Theatre",
          "metroArea"=>
           {"displayName"=>"Jackson Hole",
            "uri"=>
             "http://www.songkick.com/metro_areas/57504-us-jackson-hole?utm_source=36827&utm_medium=partner",
            "id"=>57504,
            "state"=>{"displayName"=>"WY"},
            "country"=>{"displayName"=>"US"}},
          "lat"=>43.4793,
          "lng"=>-110.763,
          "uri"=>
           "http://www.songkick.com/venues/246638-pink-garter-theatre?utm_source=36827&utm_medium=partner",
          "id"=>246638},
        "uri"=>
         "http://www.songkick.com/concerts/25043744-tribal-seeds-at-pink-garter-theatre?utm_source=36827&utm_medium=partner",
        "id"=>25043744,
        "popularity"=>0.017153},
       {"displayName"=>
         "Tribal Seeds with The Skints and The Steppas at Sunshine Theater (January 29, 2016)",
        "type"=>"Concert",
        "status"=>"ok",
        "ageRestriction"=>nil,
        "start"=>
         {"time"=>"19:00:00",
          "datetime"=>"2016-01-29T19:00:00-0700",
          "date"=>"2016-01-29"},
        "performance"=>
         [{"billingIndex"=>1,
           "displayName"=>"Tribal Seeds",
           "artist"=>
            {"identifier"=>
              [{"href"=>
                 "http://api.songkick.com/api/3.0/artists/mbid:dbf44fed-7445-4808-ae8a-c5c4cf5f529d.json",
                "mbid"=>"dbf44fed-7445-4808-ae8a-c5c4cf5f529d"}],
             "displayName"=>"Tribal Seeds",
             "uri"=>
              "http://www.songkick.com/artists/538550-tribal-seeds?utm_source=36827&utm_medium=partner",
             "id"=>538550},
           "billing"=>"headline",
           "id"=>49224419},
          {"billingIndex"=>2,
           "displayName"=>"The Skints",
           "artist"=>
            {"identifier"=>
              [{"href"=>
                 "http://api.songkick.com/api/3.0/artists/mbid:7a279145-e778-4099-8f73-ea917a1956c9.json",
                "mbid"=>"7a279145-e778-4099-8f73-ea917a1956c9"}],
             "displayName"=>"The Skints",
             "uri"=>
              "http://www.songkick.com/artists/330879-skints?utm_source=36827&utm_medium=partner",
             "id"=>330879},
           "billing"=>"support",
           "id"=>49224424},
          {"billingIndex"=>3,
           "displayName"=>"The Steppas",
           "artist"=>
            {"identifier"=>
              [{"href"=>
                 "http://api.songkick.com/api/3.0/artists/mbid:e1a2eafa-3530-4293-a321-905407180620.json",
                "mbid"=>"e1a2eafa-3530-4293-a321-905407180620"}],
             "displayName"=>"The Steppas",
             "uri"=>
              "http://www.songkick.com/artists/6317464-steppas?utm_source=36827&utm_medium=partner",
             "id"=>6317464},
           "billing"=>"support",
           "id"=>49224429}],
        "location"=>
         {"city"=>"Albuquerque, NM, US",
          "lat"=>35.0840872,
          "lng"=>-106.6489649},
        "venue"=>
         {"displayName"=>"Sunshine Theater",
          "metroArea"=>
           {"displayName"=>"Albuquerque",
            "uri"=>
             "http://www.songkick.com/metro_areas/21024-us-albuquerque?utm_source=36827&utm_medium=partner",
            "id"=>21024,
            "state"=>{"displayName"=>"NM"},
            "country"=>{"displayName"=>"US"}},
          "lat"=>35.0840872,
          "lng"=>-106.6489649,
          "uri"=>
           "http://www.songkick.com/venues/49864-sunshine-theater?utm_source=36827&utm_medium=partner",
          "id"=>49864},
        "uri"=>
         "http://www.songkick.com/concerts/25043759-tribal-seeds-at-sunshine-theater?utm_source=36827&utm_medium=partner",
        "id"=>25043759,
        "popularity"=>0.017153},
       {"displayName"=>
         "Tribal Seeds with The Skints and The Steppas at Orpheum Theater (January 30, 2016)",
        "type"=>"Concert",
        "status"=>"ok",
        "ageRestriction"=>nil,
        "start"=>
         {"time"=>"19:00:00",
          "datetime"=>"2016-01-30T19:00:00-0700",
          "date"=>"2016-01-30"},
        "performance"=>
         [{"billingIndex"=>1,
           "displayName"=>"Tribal Seeds",
           "artist"=>
            {"identifier"=>
              [{"href"=>
                 "http://api.songkick.com/api/3.0/artists/mbid:dbf44fed-7445-4808-ae8a-c5c4cf5f529d.json",
                "mbid"=>"dbf44fed-7445-4808-ae8a-c5c4cf5f529d"}],
             "displayName"=>"Tribal Seeds",
             "uri"=>
              "http://www.songkick.com/artists/538550-tribal-seeds?utm_source=36827&utm_medium=partner",
             "id"=>538550},
           "billing"=>"headline",
           "id"=>49224529},
          {"billingIndex"=>2,
           "displayName"=>"The Skints",
           "artist"=>
            {"identifier"=>
              [{"href"=>
                 "http://api.songkick.com/api/3.0/artists/mbid:7a279145-e778-4099-8f73-ea917a1956c9.json",
                "mbid"=>"7a279145-e778-4099-8f73-ea917a1956c9"}],
             "displayName"=>"The Skints",
             "uri"=>
              "http://www.songkick.com/artists/330879-skints?utm_source=36827&utm_medium=partner",
             "id"=>330879},
           "billing"=>"support",
           "id"=>49224534},
          {"billingIndex"=>3,
           "displayName"=>"The Steppas",
           "artist"=>
            {"identifier"=>
              [{"href"=>
                 "http://api.songkick.com/api/3.0/artists/mbid:e1a2eafa-3530-4293-a321-905407180620.json",
                "mbid"=>"e1a2eafa-3530-4293-a321-905407180620"}],
             "displayName"=>"The Steppas",
             "uri"=>
              "http://www.songkick.com/artists/6317464-steppas?utm_source=36827&utm_medium=partner",
             "id"=>6317464},
           "billing"=>"support",
           "id"=>49224539}],
        "location"=>
         {"city"=>"Flagstaff, AZ, US", "lat"=>35.1986243, "lng"=>-111.6494859},
        "venue"=>
         {"displayName"=>"Orpheum Theater",
          "metroArea"=>
           {"displayName"=>"Scottsdale",
            "uri"=>
             "http://www.songkick.com/metro_areas/22628-us-scottsdale?utm_source=36827&utm_medium=partner",
            "id"=>22628,
            "state"=>{"displayName"=>"AZ"},
            "country"=>{"displayName"=>"US"}},
          "lat"=>35.1986243,
          "lng"=>-111.6494859,
          "uri"=>
           "http://www.songkick.com/venues/58214-orpheum-theater?utm_source=36827&utm_medium=partner",
          "id"=>58214},
        "uri"=>
         "http://www.songkick.com/concerts/25043844-tribal-seeds-at-orpheum-theater?utm_source=36827&utm_medium=partner",
        "id"=>25043844,
        "popularity"=>0.017153},
       {"displayName"=>"California Roots Festival 2016",
        "type"=>"Festival",
        "status"=>"ok",
        "ageRestriction"=>"all",
        "start"=>{"time"=>nil, "datetime"=>nil, "date"=>"2016-05-27"},
        "end"=>{"time"=>nil, "datetime"=>nil, "date"=>"2016-05-29"},
        "performance"=>
         [{"billingIndex"=>1,
           "displayName"=>"Rebelution",
           "artist"=>
            {"identifier"=>
              [{"href"=>
                 "http://api.songkick.com/api/3.0/artists/mbid:bf225245-fce7-4d30-b648-887cb33529e4.json",
                "mbid"=>"bf225245-fce7-4d30-b648-887cb33529e4"}],
             "displayName"=>"Rebelution",
             "uri"=>
              "http://www.songkick.com/artists/405316-rebelution?utm_source=36827&utm_medium=partner",
             "id"=>405316},
           "billing"=>"headline",
           "id"=>49397154},
          {"billingIndex"=>2,
           "displayName"=>"The Expendables",
           "artist"=>
            {"identifier"=>
              [{"href"=>
                 "http://api.songkick.com/api/3.0/artists/mbid:d94403dd-0446-4b6b-a47c-340b03365390.json",
                "mbid"=>"d94403dd-0446-4b6b-a47c-340b03365390"}],
             "displayName"=>"The Expendables",
             "uri"=>
              "http://www.songkick.com/artists/430327-expendables?utm_source=36827&utm_medium=partner",
             "id"=>430327},
           "billing"=>"headline",
           "id"=>49397164},
          {"billingIndex"=>3,
           "displayName"=>"Tribal Seeds",
           "artist"=>
            {"identifier"=>
              [{"href"=>
                 "http://api.songkick.com/api/3.0/artists/mbid:dbf44fed-7445-4808-ae8a-c5c4cf5f529d.json",
                "mbid"=>"dbf44fed-7445-4808-ae8a-c5c4cf5f529d"}],
             "displayName"=>"Tribal Seeds",
             "uri"=>
              "http://www.songkick.com/artists/538550-tribal-seeds?utm_source=36827&utm_medium=partner",
             "id"=>538550},
           "billing"=>"headline",
           "id"=>49397159},
          {"billingIndex"=>4,
           "displayName"=>"The Green",
           "artist"=>
            {"identifier"=>
              [{"href"=>
                 "http://api.songkick.com/api/3.0/artists/mbid:29e9e953-9367-4155-afb9-bf97471b1668.json",
                "mbid"=>"29e9e953-9367-4155-afb9-bf97471b1668"},
               {"href"=>
                 "http://api.songkick.com/api/3.0/artists/mbid:78577910-af5f-42db-9aee-f3a0ec04e289.json",
                "mbid"=>"78577910-af5f-42db-9aee-f3a0ec04e289"},
               {"href"=>
                 "http://api.songkick.com/api/3.0/artists/mbid:8972ee97-0f60-4f05-bc21-5d37ab5f64a8.json",
                "mbid"=>"8972ee97-0f60-4f05-bc21-5d37ab5f64a8"},
               {"href"=>
                 "http://api.songkick.com/api/3.0/artists/mbid:a89da1ce-db77-4f75-9a2b-ddb276a781c3.json",
                "mbid"=>"a89da1ce-db77-4f75-9a2b-ddb276a781c3"},
               {"href"=>
                 "http://api.songkick.com/api/3.0/artists/mbid:1b47b302-e162-411a-86d3-3554646f5304.json",
                "mbid"=>"1b47b302-e162-411a-86d3-3554646f5304"},
               {"href"=>
                 "http://api.songkick.com/api/3.0/artists/mbid:f0d9d4f0-bba1-46ce-8438-9ef67690db36.json",
                "mbid"=>"f0d9d4f0-bba1-46ce-8438-9ef67690db36"},
               {"href"=>
                 "http://api.songkick.com/api/3.0/artists/mbid:d8910e9a-b3b9-4b83-8a4c-2f31734d096a.json",
                "mbid"=>"d8910e9a-b3b9-4b83-8a4c-2f31734d096a"},
               {"href"=>
                 "http://api.songkick.com/api/3.0/artists/mbid:a2030c8d-cad0-4327-9534-47761f8ef0f0.json",
                "mbid"=>"a2030c8d-cad0-4327-9534-47761f8ef0f0"}],
             "displayName"=>"The Green",
             "uri"=>
              "http://www.songkick.com/artists/298049-green?utm_source=36827&utm_medium=partner",
             "id"=>298049},
           "billing"=>"headline",
           "id"=>49397169},
          {"billingIndex"=>5,
           "displayName"=>"Hirie",
           "artist"=>
            {"identifier"=>
              [{"href"=>
                 "http://api.songkick.com/api/3.0/artists/mbid:9ff976e3-5ba3-45e9-b55b-9006b09ab084.json",
                "mbid"=>"9ff976e3-5ba3-45e9-b55b-9006b09ab084"}],
             "displayName"=>"Hirie",
             "uri"=>
              "http://www.songkick.com/artists/7087474-hirie?utm_source=36827&utm_medium=partner",
             "id"=>7087474},
           "billing"=>"headline",
           "id"=>49397174}],
        "location"=>
         {"city"=>"Monterey, CA, US", "lat"=>36.5941533, "lng"=>-121.8655415},
        "series"=>{"displayName"=>"California Roots Festival"},
        "venue"=>
         {"displayName"=>"Monterey County Fairgrounds",
          "metroArea"=>
           {"displayName"=>"SF Bay Area",
            "uri"=>
             "http://www.songkick.com/metro_areas/26330-us-sf-bay-area?utm_source=36827&utm_medium=partner",
            "id"=>26330,
            "state"=>{"displayName"=>"CA"},
            "country"=>{"displayName"=>"US"}},
          "lat"=>36.5941533,
          "lng"=>-121.8655415,
          "uri"=>
           "http://www.songkick.com/venues/2957373-monterey-county-fairgrounds?utm_source=36827&utm_medium=partner",
          "id"=>2957373},
        "uri"=>
         "http://www.songkick.com/festivals/74136/id/25142909-california-roots-festival-2016?utm_source=36827&utm_medium=partner",
        "id"=>25142909,
        "popularity"=>0.059098}]},
   "perPage"=>50,
   "page"=>1,
   "totalEntries"=>21}}

# p CALENDAR_DATA["resultsPage"]["results"]["event"].map {|event| event["location"]["lng"]}
# p ARTIST_DATA["resultsPage"]["results"]["artist"].first["displayName"]
