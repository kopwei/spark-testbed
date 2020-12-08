#!/bin/bash
# Distributed under the terms of the Modified BSD License.

set -e
# Update password
/usr/bin/python3 /root/gen_password.py

# Start jupyter lab
jupyter lab --ip=0.0.0.0 --port=8888 --no-browser --allow-root