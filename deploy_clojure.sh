#!/usr/bin/bash

if [[ ! -d ~/.clojure ]]; then
	mkdir ~/.clojure/
fi

if [[ ! -f ~/.clojure/deps.edn ]]; then
	echo 'put .clojure/deps.edn in my home directory'
	ln clojure/deps.edn ~/.clojure/deps.edn
fi
