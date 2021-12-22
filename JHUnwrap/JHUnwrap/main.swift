//
//  main.swift
//  JHUnwrap
//
//  Created by HaoCold on 2021/12/15.
//

import Foundation

func test1() {
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
    
    print(dict["age"].jh_string)
    print(dict["age"].jh_stringValue)
    print(dict["age"].jh_int) // Swift.Int
    print(dict["age"].jh_bool)
    print(dict["age"].jh_array)
    print(dict["age"].jh_dict)
    print("================\n")
//    ""
//    20
//    20
//    false
//    []
//    [:]
    
    print(dict["sex"].jh_string)
    print(dict["sex"].jh_stringValue)
    print(dict["sex"].jh_int)
    print(dict["sex"].jh_bool) // Swift.Bool
    print(dict["sex"].jh_array)
    print(dict["sex"].jh_dict)
    print("================\n")
//    ""
//    false
//    9223372036854775807
//    false
//    []
//    [:]
    
    print(dict["array"].jh_string)
    print(dict["array"].jh_stringValue)
    print(dict["array"].jh_int)
    print(dict["array"].jh_bool)
    print(dict["array"].jh_array) // Swift.Array<Any>
    print(dict["array"].jh_dict)
    print("================\n")
//    ""
//    [1, 2, 3]
//    9223372036854775807
//    false
//    [1, 2, 3]
//    [:]
    
    print(dict["dic"].jh_string)
    print(dict["dic"].jh_stringValue)
    print(dict["dic"].jh_int)
    print(dict["dic"].jh_bool)
    print(dict["dic"].jh_array)
    print(dict["dic"].jh_dict) // Swift.Dictionary<Swift.String, Any>
    print("================\n")
//    ""
//    ["b": "hello", "c": true, "a": 123]
//    9223372036854775807
//    false
//    []
//    ["b": "hello", "c": true, "a": 123]
    
    print(dict["height"].jh_string)
    print(dict["height"].jh_stringValue)
    print(dict["height"].jh_int)
    print(dict["height"].jh_bool)
    print(dict["height"].jh_float)
    print(dict["height"].jh_double)
    print(dict["height"].jh_array)
    print(dict["height"].jh_dict)
    print("================\n")
//    ""
//    180.5
//    9223372036854775807
//    false
//    180.5
//    180.5
//    []
//    [:]
}

func test2() {
    let dict: Dictionary<String, Any?> = [
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
//    Optional("Lilei")
//    9223372036854775807
//    false
//    []
//    [:]
    
    print(dict["age"].jh_string)
    print(dict["age"].jh_stringValue)
    print(dict["age"].jh_int) // Swift.Int
    print(dict["age"].jh_bool)
    print(dict["age"].jh_array)
    print(dict["age"].jh_dict)
    print("================\n")
//    ""
//    Optional(20)
//    20
//    false
//    []
//    [:]
    
    print(dict["sex"].jh_string)
    print(dict["sex"].jh_stringValue)
    print(dict["sex"].jh_int)
    print(dict["sex"].jh_bool) // Swift.Bool
    print(dict["sex"].jh_array)
    print(dict["sex"].jh_dict)
    print("================\n")
//    ""
//    Optional(false)
//    9223372036854775807
//    false
//    []
//    [:]
    
    print(dict["array"].jh_string)
    print(dict["array"].jh_stringValue)
    print(dict["array"].jh_int)
    print(dict["array"].jh_bool)
    print(dict["array"].jh_array) // Swift.Array<Any>
    print(dict["array"].jh_dict)
    print("================\n")
//    ""
//    Optional([1, 2, 3])
//    9223372036854775807
//    false
//    [1, 2, 3]
//    [:]
    
    print(dict["dic"].jh_string)
    print(dict["dic"].jh_stringValue)
    print(dict["dic"].jh_int)
    print(dict["dic"].jh_bool)
    print(dict["dic"].jh_array)
    print(dict["dic"].jh_dict) // Swift.Dictionary<Swift.String, Any>
    print("================\n")
//    ""
//    Optional(["c": true, "b": "hello", "a": 123])
//    9223372036854775807
//    false
//    []
//    ["b": "hello", "c": true, "a": 123]
    
    print(dict["height"].jh_string)
    print(dict["height"].jh_stringValue)
    print(dict["height"].jh_int)
    print(dict["height"].jh_bool)
    print(dict["height"].jh_float)
    print(dict["height"].jh_double)
    print(dict["height"].jh_array)
    print(dict["height"].jh_dict)
    print("================\n")
//    ""
//    Optional(180.5)
//    9223372036854775807
//    false
//    3.4028235e+38
//    1.7976931348623157e+308
//    []
//    [:]
    
    print(dict["height"]!.jh_string)
    print(dict["height"]!.jh_stringValue)
    print(dict["height"]!.jh_int)
    print(dict["height"]!.jh_bool)
    print(dict["height"]!.jh_float)
    print(dict["height"]!.jh_double)
    print(dict["height"]!.jh_array)
    print(dict["height"]!.jh_dict)
    print("================\n")
  
//    ""
//    180.5
//    9223372036854775807
//    false
//    180.5
//    180.5
//    []
//    [:]
}

test1()   // Dictionary<String, Any>
//test2()   // Dictionary<String, Any?>

//foo or bar
