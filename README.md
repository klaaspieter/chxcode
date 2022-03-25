# chxcode 
![Build Status](https://github.com/klaaspieter/chxcode/workflows/ci/badge.svg)

Changes the current Xcode.

## Installation

```sh
brew tap klaaspieter/formula
brew install chxcode
```

## Usage

With the following in your `.bashrc`, `.zshrc` file:

```sh
source /usr/local/share/chxcode/chxcode
```

List available Xcodes:

```sh
$ chxcode
  9.2
  9.3
  9.4
```

Select Xcode for the current shell:

```sh
$ chxcode 9.3
$ chxcode
  9.2
* 9.3
  9.4
$ echo "$DEVELOPER_DIR"
/Applications/Xcode-9.3.app/Contents/Developer
```

## Auto-switching

To automatically switch the current Xcode version when you `cd` between different directories, load `auto` in `~/.bashrc` or `~/.zshrc`.

### Intel

```sh
source /usr/local/share/chxcode/chxcode
source /usr/local/share/chxcode/auto
```

### Apple Silicon

```sh
source /opt/homebrew/opt/share/chxcode/chxcode
source /opt/homebrew/opt/share/chxcode/auto
```

(If you're unsure then simply follow the instructions Homebrew showed you after installation. Run `brew info chxcode` to see the instructions again.)

`auto` looks for an `.xcode-version` file and automatically selects that version for the current folder and any of it's subfolders.

For example:

```sh
$ xcode-select -p
/Applications/Xcode-9.4.app/Contents/Developer
$ chxcode
  9.2
  9.3
* 9.4
$ echo "9.3" > project/.xcode-version
$ cd project
$ xcode-select -p
/Applications/Xcode-9.3.app/Contents/Developer
$ chxcode
  9.2
* 9.3
  9.4
```

## Xcodes

When `chxcode` is sourced it auto-detects installed Xcodes. After installing a new Xcode you _must_ restart the shell before chxcode can find them.

## How it works

`chxcode` uses Spotlight (through `mdfind`) to search for the `com.apple.dt.Xcode` bundle identifier. It then uses `mdls` to find the Xcode version. Switching Xcodes is done by setting the `DEVELOPER_DIR` environment variable.

`man xcode-select` on the `DEVELOPER_DIR` environment variable:
> Overrides the active developer directory. When DEVELOPER_DIR is set, its value will be used instead of the system-wide active developer directory.

## Test

With [shunit2] installed, run:

```sh
$ ./test/runner
```

To run individual test files:

```sh
# Interactive shell
zsh -i test/[name]_test
bash -i test/[name]_test

# Non-interactive shell
zsh test/[name]_test
bash test/[name]_test
```

[shunit2]: https://github.com/kward/shunit2

## Acknowledgements

- [postmodern] for [chruby]

[postmodern]: https://github.com/postmodern
[chruby]: https://github.com/postmodern/chruby
