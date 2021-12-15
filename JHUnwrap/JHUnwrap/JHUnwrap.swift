//
//  JHUnwrap.swift
//  JHUnwrap
//
//  Created by HaoCold on 2021/12/15.
//

extension Optional {
    /// Change to String, return `""` if failed
    var jh_string: String {
        get {
            return self.flatMap { $0 as? String } ?? ""
        }
    }
    
    /// Describe as String
    var jh_stringValue: String {
        get {
            return self.flatMap { "\($0)" } ?? ""
        }
    }
    
    /// Change to Int, return `Int.max` if failed
    var jh_int: Int {
        get {
            return self.flatMap { Int("\($0)") } ?? Int.max
        }
    }

    /// Change to Bool, return `false` if failed
    var jh_bool: Bool {
        get {
            return self.flatMap { Bool("\($0)") } ?? false
        }
    }
    
    /// Change to Float, return `Float.greatestFiniteMagnitude` if failed
    var jh_float: Float {
        get {
            return self.flatMap { Float("\($0)") } ?? Float.greatestFiniteMagnitude
        }
    }
    
    /// Change to Double, return `Double.greatestFiniteMagnitude` if failed
    var jh_double: Double {
        get {
            return self.flatMap { Double("\($0)") } ?? Double.greatestFiniteMagnitude
        }
    }
    
    /// Change to Array<Any>, return `[]` if failed
    var jh_array: Array<Any> {
        get {
            return self.flatMap { $0 as? Array<Any> } ?? []
        }
    }
    
    /// Change to Dictionary<String, Any>, return `[:]` if failed
    var jh_dict: Dictionary<String, Any> {
        get {
            return self.flatMap { $0 as? Dictionary<String, Any> } ?? [:]
        }
    }
}
