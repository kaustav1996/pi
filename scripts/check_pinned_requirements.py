#!/usr/bin/env python3
# -*- coding: utf-8 -*-
import sys

with open(sys.argv[1]) as reqfile:
    for line in reqfile.readlines():
        # Ignore blank lines and comments
        if line.startswith("#") or not line.strip():
            continue

        # Ensure all dependencies are pinned
        if len([part for part in line.split("==") if part.strip()]) != 2:
            print(f"Dependency [{line.strip()}] inside [{sys.argv[1]}] must be pinned to a fixed version")
            sys.exit(1)
