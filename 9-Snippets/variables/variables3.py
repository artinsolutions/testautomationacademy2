# robot -V variables3.py:env2:1:2:3 variables.robot


var1 = {
    "KeyA": "Hodnota1",
    "KeyB": "Ahoj Svet"
}
var2 = {"KeyA": "Hodnota2", "KeyB": "Hello world"}


def get_variables(environment, a, b, c):
    if environment == "env1":
        return var1
    elif environment == "env2":
        return var2
