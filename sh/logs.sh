#!/bin/bash

find /var/log -type f -name "*.gz" -exec rm -f {} \; 