DIRS := $(shell ls -d ?)
JSON := $(foreach d,$(DIRS),$(d)/formatted/A2.json)
TTL := $(foreach d,$(DIRS),$(d)/formatted/A2.ttl)
JSONLD := $(foreach d,$(DIRS),$(d)/formatted/A2.jsonld)

%/formatted/A2.json: %/A2.json
	mkdir -p $*/formatted
	jq . $< > $@

%/formatted/A2.ttl: %/A2.ttl
	mkdir -p $*/formatted
	riot --formatted=ttl $< > $@

%/formatted/A2.jsonld: %/A2.jsonld
	mkdir -p $*/formatted
	jq . $< > $@

.PHONY: format
format: $(JSON) $(TTL) $(JSONLD)
