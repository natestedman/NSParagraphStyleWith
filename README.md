# `NSParagraphStyle.with(...)`
[![License](https://img.shields.io/badge/license-Creative%20Commons%20Zero%20v1.0%20Universal-blue.svg)](https://creativecommons.org/publicdomain/zero/1.0/)

Adds the static function `with` to `NSParagraphStyle`, which allows immutable paragraph styles to be created with arbitrary parameters, in one function call.

    NSParagraphStyle.with(alignment: .Center, lineSpacing: 10)

All `NSMutableParagraphStyle` properties are supported, and all parameters may be omitted, with the default value from `NSParagraphStyle.defaultParagraphStyle()` being used in that case.

## Installation
There's just one file - submodules, direct download, etc.
