# Lession 2 - Running

---

## Run tests using `robot`

- to run test one by one

`robot test_name.robot`

`robot suite_name.robot`

`robot folder_name`

---

## Run tests cmd line arguments

- every argument has short and full syntax
  - -L / --loglevel
- see `robot -h` for details

| argument | meaning | example |
| -------- | ------- | -----|
| -v       | variable | -v MYVAR:value |
| -L       | log level | -L TRACE |
| -i       | include tags | -i regression |
| -e       | exclude tags | -e regression |
| -t       | test name to run | -t "My test" |
| --skiponfailure | based on tag, skip tests that failed | --skiponfailure full |


- when using -i and -e you can use AND/OR to specify multiple combinations of tags.
  - -i quickANDvalid (runs tests that have tags  `quick` AND `valid`)
  - -i quickORvalid (runs tests that have tags  `quick` OR `valid`)
  - the same is for -e and any other tags based selection

## Run tests using `pabot`

- to run test in parallel
- you must install it before usage by `pip install robotframework-pabot`

`robot test_name.robot`

`robot suite_name.robot`

`robot folder_name`

---

## Pabot features

- by default paralelism is on the suite level
- use `--testlevelsplit` to split at test level
- use `--processes` to run that amount in parallel