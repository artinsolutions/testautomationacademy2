# Robot Framework Heureka tests

Set of tests to test Heureka portal and its buy capabilities.

## Content of directory


| File                         | Note                                       | 
|------------------------------|--------------------------------------------|
| testcase.t.md                | Markdown file with testcase definition     |
| heureka.robot                | Test Suite with tests                      |
| requirements.txt             | File with all requirements to be installed |
| resources/resources.resource | Keywords implementation                    |
| README.md                      | This file                                     |


## Installation Instructions

- download and install `python3.7` or higher from the [python.org](https://www.python.org) (don't use windows 10 'store' one)
- use command line for next steps!
    - clone repository [Test automation academy](https://github.com/artinsolutions/testautomationacademy2)
    - open folder where repository is downloaded and navigate to `0-Final` folder 
    - `pip install -r requirements.txt`

This should download and install all the required packages and libraries to work with.

### Note

- it is preferred to use `virtual environment` for this. Information can be found at: [https://docs.python.org/3/library/venv.html](VENV)


## Chromedriver Installation

- check your version of Google Chrome
- download `chromedriver` from [chromedrive home](https://chromedriver.chromium.org/downloads) that suits your version
- copy it to `PATH` or to folder from which you are going to run tests

### macOS users
- if you're using brew simply run 'brew install chromedriver'
- after that run `xattr -d com.apple.quarantine <path_to_chromedriver>` in terminal to get chromedriver from quarantine
  - use `which chromedriver` after installation to find its install path


## Running tests
#### One by one tests
`robot .`

**Note**: you must be in folder `0-Final`


#### After run

- after running tests log files are created:
  - log.html -> detailed execution log
  - output.html -> main log of the run. Higher level
  - output.xml -> xml file with report and stuff to generate other html files