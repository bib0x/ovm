# [ postgres ]

This module contains useful function for AWS shortcuts

Requirements
------------

Packages:
- curl
- jq

Environment variable
--------------------

```sh
export OVM_AWS_IPRANGES_URL=${OVM_AWS_IPRANGES_URL:-"https://ip-ranges.amazonaws.com/ip-ranges.json"}
export OVM_AWS_IPRANGES_CACHE_LOCATION=${OVM_AWS_IPRANGES_CACHE_LOCATION:-"/tmp/aws-ip-ranges.json"}
export OVM_AWS_IPRANGES_CACHE_REFRESH=${OVM_AWS_IPRANGES_CACHE_REFRESH:-60}
```

## aws-ipr

Gather a JSON dump of AWS IP ranges.

```
$ aws-ipr
```

## aws-ipr-cache

Like **aws-ipr** but save results in a file.
By default, this file is refreshed if it has been created for more than 1h.

```
$ aws-ipr-cache
```
