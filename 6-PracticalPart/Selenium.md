# Selenium


## What is selenium

- automates browser
- using webdriver to do so
  - webdriver is language binding and the implementation of the individual browser
- selenium does not directly automate browser
  - instead, it is using driver to do so

---

## Selenium Grid

- smart proxy server to run parallel tests
- consists of hub and node
- routing commands to remote web browser instances
- ability to connect also mobile devices

### selenium hub
- main 'server' to communicate with
- used to route JSON commands to specific nodes

### selenium node

- remote device that consists of a native os and webdriver

---

## When to use selenium grid

- you need parallel execution
- multibrowser execution
- reduce time of execution using parallel execution

---

## Robot Framework and selenium

- a match made in heaven
- to use selenium simply install `robotframework-seleniumlibrary`
  - it will install all required packages for you

---

## Usage

- define `Library    SeleniumLibrary` in `*** Settings ***` part of the robot framework file
- from now on you can use [keywords](https://robotframework.org/SeleniumLibrary/SeleniumLibrary.html) from SeleniumLibrary