from dataclasses import dataclass


@dataclass
class MyVariables:
    name: str = "My variable"
    date: str = "10.10.2021"

    def my_funct(self):
        return "AHOJ"


my_variables = MyVariables()
