# Lession 2

---

## How to write a test

- tests must be easy to understand (at the highest level)
- don't use functions that changes the flow of main test
- explicit names for tests and keywords
- consistency
- keywords should tell `what` and not `how`

---

## Use correct abstraction level

- Don't use locators at the highest level of test cases 
- Don't use comments instead of abstraction level
- Suit rules to your need
- Don't use complex logic in keywords

---

## Data driven

- Robot framework supports data driven testing
- Use data driven approach for repeated tests

--- 
## Variables

- use ${variables} for repeated locators, texts
- don't over use them
- usage of variables for locators is recommended

---

## Dependencies

- try to write tests that no dependencies are between them
- every test should have setup/teardown to prepare or clean environment
- setup / teardown must not be test cases
- use API if possible (or even application configuration)

---

## Synchronization

- Don't use sleeps for synchronization purposes
- Use waits instead !

