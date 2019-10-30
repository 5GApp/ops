#!/bin/sh

GO111MODULE=on GOOS=linux go build
gsutil cp ops gs://cli/linux

GO111MODULE=on GOOS=darwin go build
gsutil cp ops gs://cli/darwin

gsutil -D setacl public-read gs://cli/linux/ops
gsutil -D setacl public-read gs://cli/darwin/ops
