#!/bin/sh

# To copy default settings files only if they don't exist locally
cp -n /code/taccsite_cms/settings_from_host/* /code/taccsite_cms/settings/

# To run docker "command"
exec "$@"
