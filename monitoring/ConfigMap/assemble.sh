#!/usr/bin/env bash

kubectl create cm scripts --dry-run=client -o yaml --from-file=scripts 
