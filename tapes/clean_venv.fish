#!/usr/bin/env fish
pip uninstall -y -r (pip freeze | psub)
