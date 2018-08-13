#!/bin/env ruby
# encoding: utf-8

require 'wikidata/fetcher'

sparq = 'SELECT ?item WHERE { ?item p:P39/ps:P39 wd:Q28941940 }'
ids = EveryPolitician::Wikidata.sparql(sparq)

names = EveryPolitician::Wikidata.morph_wikinames(source: 'tmtmtmtm/macau-legislative-assembly', column: 'wikiname__zh')
EveryPolitician::Wikidata.scrape_wikidata(ids: ids, names: { zh: names })

