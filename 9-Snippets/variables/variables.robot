*** Test Cases ***
Log only variable values
#    Log    ${string_variable}
#    Log    ${list_variable}   # @ expandne variables
#    Log    ${dict_variable}    # dict_variable["key1"]
#    Log    ${dict_variable["key1"]}   #  value1
#    Log    ${dict_variable["key_dict"]["ahoj"]}   # >>>  "hello"
#    Log    &{dict_variable.key1}    # dict_variable["key1"]

#    Log    ${my_variables.name}
#    Log    ${my_variables.date}
#    ${res}    ${my_variables.my_funct}
#    Log    ${res}

    Log    ${KeyA}
    Log    ${KeyB}
