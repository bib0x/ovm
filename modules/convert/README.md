# [ convert ]

This module contains different oneliner that could be handy time to time when converting data.

## convert-hex2pylist

```
$ convert-hex2pylist <num1> <num2> ... 
$ convert-hex2pylist 01 02 03 04
[0x01, 0x02, 0x03, 0x04]

$ echo '01 02 03 04' > test.txt
$ convert-hex2pylist $(cat test.txt)
[0x01, 0x02, 0x03, 0x04]
```
