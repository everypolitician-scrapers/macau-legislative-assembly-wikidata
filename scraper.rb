#!/bin/env ruby
# encoding: utf-8

require 'wikidata/fetcher'

names = EveryPolitician::Wikidata.morph_wikinames(source: 'tmtmtmtm/macau-legislative-assembly', column: 'wikiname__zh')
EveryPolitician::Wikidata.scrape_wikidata(names: { zh: names })

