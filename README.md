# xcrmint

A command-line utility for replacing `macosx.internal` SDK settings in `.xcodeproj` files
with `macosx`. This is useful when building projects from opensource.apple.com that try
to link Apple's internal SDK.

## Usage

```sh
xcrmint path/to/<project>.xcodeproj
```

## Installation

With the xnuports [pkg](git@github.com:xnuports/pkg-bootstrap.git) package manager:

```sh
pkg install xcrmint
```

## Notes

- This can change more things in the `.xcodeproj` than just the SDK, if
  you're worried about that, check the project into version control
  before running this
- Some of Apple's open source projects use `.xcconfig` files and set the
  SDK there, this does not fix those. Run something like `rg
  macosx.internal` to verify all references you care about are gone.
