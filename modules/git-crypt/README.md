# [git-crypt]

This module contains wrapper from git-crypt utility.

## git-crypt-pubkey-info

Search for email address associated to each public key.

```
$ git-crypt-pubkey-info <directory>

$ git-crypt-pubkey-info .git-crypt/keys/default/0 
XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX.gpg: "bib0x <bib0x@bib0x.lab.local>"
```