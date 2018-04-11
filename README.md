# chxcode

Changes the current Xcode.

## Usage

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

## Test

With [shunit2] installed, run:

```sh
$ ./test/runner
```

[shunit2]: https://github.com/kward/shunit://github.com/kward/shunit2 

## Acknowledgements

- [postmodern] for [chruby]

[postmodern]: https://github.com/postmodern
[chruby]: https://github.com/postmodern/chruby
