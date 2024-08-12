# Symbols
This file describes how symbols are formatted in Callisto's assembly output

Note: in the uxn backend and CallistoScript, the `__` at the start of symbols is omitted

## Functions
Format: `__func__FUNC`, where `FUNC` is the function's name

## Globals
Format: `__global_NAME`, where `NAME` is the global's name

Note: globals aren't defined in CallistoScript's output, as their addresses are created
at compile time

## `implement` methods
Format: `__type_METHOD_TYPE`, where `METHOD` is the method, and `TYPE` is the type

## Characters replaced in symbol names
Some characters are replaced in symbol names, as assemblers will error as they don't
allow as many characters as Callisto does in labels. Here is a table with what characters
are replaced:

| Character | Replaced with |
| --------- | ------------- |
| `!`       | `__exc__`     |
| `"`       | `__dq__`      |
| `£`       | `__pnd__`     |
| `$`       | `__dlr__`     |
| `%`       | `__pcnt__`    |
| `^`       | `__up__`      |
| `&`       | `__amp__`     |
| `*`       | `__star__`    |
| `(`       | `__lp__`      |
| `)`       | `__r__`       |
| `-`       | `__dash__`    |
| `'`       | `__us__`      |
| `+`       | `__plus__`    |
| `=`       | `__equ__`     |
| `[`       | `__ls__`      |
| `{`       | `__lc__`      |
| `]`       | `__rs__`      |
| `}`       | `__rc__`      |
| `;`       | `__scn__`     |
| `:`       | `__cn__`      |
| `'`       | `__sq__`      |
| `@`       | `__at__`      |
| `#`       | `__hg__`      |
| `~`       | `__tld__`     |
| `\\`      | `__bs__`      |
| `|`       | `__pipe__`    |
| `,`       | `__comma__`   |
| `<`       | `__left__`    |
| `.`       | `__dot__`     |
| `>`       | `__right__`   |
| `/`       | `__slash__`   |
| `?`       | `__qstn__`    |
