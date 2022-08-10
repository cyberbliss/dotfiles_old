#!/bin/bash

cd programs/

./antibody.sh
./shelby.sh
./kubectl.sh
./tpm.sh
./gcloud.sh

GOPATH=$HOME/dev_work/go ./goinstall.sh --version 1.19