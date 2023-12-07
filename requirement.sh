#!/bin/bash

lib_from="github.com"
slash="/"
list=("jmoiron/sqlx" "gorilla/mux" "lib/pq")

for item in "${list[@]}"; do
    result="$lib_from$slash$item"
    go get $result
done

# 效果其實類似go install