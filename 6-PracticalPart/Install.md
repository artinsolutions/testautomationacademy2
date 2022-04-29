# Lession 1

---

## Creation of virtual environment
- `python -m venv venv`
  - creates virtual environment with installed python in the folder venv
- `create new project in pycharm`
  - create venv when pycharm starts
---

## Installation of Robot Framework

```
pip install robotframework
```

- this will install the latest robot framework version with all required dependencies

---

## Test of installation

simply run `robot` from command line

- an error have to be shown

![rf error](../../5-RobotFramework/static_files/rf_error.png)

---

## First Test

- create new file named `test1.robot`

```robot
*** Test Cases ***
Only log output
    Log    Hello, world!
```


- this will run and create first report