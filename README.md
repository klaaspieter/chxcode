# chxcode

Changes the current Xcode.

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
  9.4 beta
```

Select Xcode for the current shell:

```sh
$ chxhode 9.3
$ chxcode
  9.2
* 9.3
  9.4 beta
$ echo "$DEVELOPER_DIR"
/Applications/Xcode-9.2.app/Contents/Developer
```

## Auto-switching

To automatically switch the current Xcode version when you `cd` between different directories, load `auto` in `~/.bashrc` or `.zshrc`:

```sh
source /usr/local/share/chxcode/chxcode
source /usr/local/share/chxcode/auto
```

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

[shunit2]: https://github.com/kward/shunit://github.com/kward/shunit2 

## Acknowledgements

- [postmodern] for [chruby]

[postmodern]: https://github.com/postmodern
[chruby]: https://github.com/postmodern/chruby
