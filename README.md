# JHUnwrap
Unwrap value from Dictionary in Swift

# Example

```
    let dict: Dictionary<String, Any> = [
        "name": "Lilei",
        "age": 20,
        "sex": false,
        "height": 180.5,
        "array": [1,2,3],
        "dic": ["a":123, "b": "hello", "c": true]
    ]
    
    for (key, _) in dict {
        print(key, "=", dict[key] as Any, ",", type(of: dict[key]))
    }
    print("================\n")
//    array = Optional([1, 2, 3]) , Optional<Any>
//    dic = Optional(["b": "hello", "a": 123, "c": true]) , Optional<Any>
//    age = Optional(200) , Optional<Any>
//    sex = Optional(false) , Optional<Any>
//    name = Optional("lilei") , Optional<Any>
    
    print(dict["name"].jh_string) // Swift.String
    print(dict["name"].jh_stringValue)
    print(dict["name"].jh_int)
    print(dict["name"].jh_bool)
    print(dict["name"].jh_array)
    print(dict["name"].jh_dict)
    print("================\n")
//    Lilei
//    Lilei
//    9223372036854775807
//    false
//    []
//    [:]
```
