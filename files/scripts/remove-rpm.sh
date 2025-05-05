#!/usr/bin/env bash

(rpm -ql rpm; rpm -ql rpm-libs; rpm -ql rpm-sequoia) | xargs -I {} rm -rf {}
rm -rf /usr/share/rpm