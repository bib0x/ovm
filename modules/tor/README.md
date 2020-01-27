# [ tor ]

This module contains different scripts needing a Tor support.

Requirements:
-------------

- Virus Total API key
- Proxychains installed and configured
- Tor installed and configured

## tor-vt

Compute a file checksum and query VT API via curl (using tor)

The scan results can be found in `/tmp/torvt`

```shell
$ tor-vt <sample>
```

## tor-vtchecksum

Query VT API via curl (using tor) based on a SHA256 file checksum

The scan results can be found in `/tmp/torvt`

```shell
$ tor-vtchecksum <SHA256>
```
