//
//  SignupFormModelValidator.swift
//  PhotoAppTests
//
//  Created by Damir Aliyev on 02.10.2023.
//

import XCTest
@testable import PhotoApp

final class SignupFormModelValidatorTests: XCTestCase {
    
    var sut: SignupFormModelValidator!

    override func setUpWithError() throws {
        sut = SignupFormModelValidator()
    }

    override func tearDownWithError() throws {
        sut = nil
    }
    
    func testSignupFormModelValidator_WhenValidFirstNameProvided_ShouldReturnTrue() {
        
        // Arrange
        
        // Act
        let isFirstNameValid = sut.isFirstNameValid(firstName: "Damir")
        
        // Assert
        XCTAssertTrue(isFirstNameValid, "The isFirstNameValid() should have returned TRUE for a valid first name but returned FALSE.")
    }
    
    func testSignupFormModelValidator_WhenTooShortFirstNameProvided_ShouldReturnFalse() {
        
        // Arrange
        
        // Act
        let isFirstNameIsValid = sut.isFirstNameValid(firstName: "Da")
        
        // Assert
        XCTAssertFalse(isFirstNameIsValid, "The isFirstNameValid() should have returned FALSE for a first name that shorter than 3 characters but returned TRUE.")
    }
    
    func testSignupFormModelValidator_WhenTooLongFirstNameProvided_ShouldReturnFalse() {
        
        // Arrange
        
        // Act
        let isFirstNameIsValid = sut.isFirstNameValid(firstName: "12345678912")
        
        // Assert
        XCTAssertFalse(isFirstNameIsValid, "The isFirstNameValid() should have returned FALSE for a first name that longer than 10 characters but returned TRUE.")
    }

}
