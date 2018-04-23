# Changelog

The format is based on [Keep a Changelog](http://keepachangelog.com/en/1.0.0/) and this project adheres to [Semantic Versioning](http://semver.org/spec/v2.0.0.html).

## [Unreleased]

### Added

- Cache Xcodes in `XCODES` environment variable when `chxcode` is first sourced. This is more more performant It also makes it possible for users to manually add Xcodes that `chxcode` can't find because Spotlight is disabled.
- Show asterisk in front of currently selected Xcode when listing Xcode versions.

## Removed

- The `APPLICATIONS` variable. This is an implementation detail and shouldn't leak into a user's shell.

### Changed

- Xcodes are found using `mdfind` instead of globs.
- Xcode version numbers are determined using `mdls` instead of the name of the app bundle.

## [0.0.1]

### Added

- sourecable chxcode script to list the installed Xcodes or set the current one.
- sourceable auto script to automatically change the current Xcode based on a `.xcode-version` file.


[Unreleased]: https://github.com/klaaspieter/chxcode/compare/0.0.1...HEAD
[0.0.1]: https://github.com/klaaspieter/chxcode/compare/970091f7002ba688efdc327f4ac71cfc398923f9...0.0.1
