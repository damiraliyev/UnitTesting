//
//  SignupFormModelValidator.swift
//  PhotoApp
//
//  Created by Damir Aliyev on 02.10.2023.
//

import Foundation

class SignupFormModelValidator {
    
    func isFirstNameValid(firstName: String) -> Bool {
        var returnValue = true
        
        if firstName.count < 3 || firstName.count > 10 {
            returnValue = false
        }
        
        return returnValue
    }
}
