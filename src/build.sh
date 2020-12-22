#!/usr/bin/env bash

if [ "$#" -gt 0 ]; then
    export GOOS=$1
fi
if [ "$#" -gt 1 ]; then
    export GOARCH=$2
fi

printf "### go fmt ###\n"
go fmt ./...

printf "\n### go vet ###\n"
go vet ./...

printf "\n### golint ###\n"
golint ./...

printf "\n### go build ###\n"
go build -i -o yaml-graph