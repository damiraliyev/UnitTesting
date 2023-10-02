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
        
        if firstName.isEmpty {
            returnValue = false
        }
        
        return returnValue
    }
}
