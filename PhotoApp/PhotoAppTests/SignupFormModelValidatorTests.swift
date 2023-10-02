//
//  SignupFormModelValidator.swift
//  PhotoAppTests
//
//  Created by Damir Aliyev on 02.10.2023.
//

import XCTest
@testable import PhotoApp

final class SignupFormModelValidatorTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.s
    }
    
    func testSignupFormModelValidator_WhenValidFirstNameProvided_ShouldReturnTrue() {
        
        // Arrange
        let sut = SignupFormModelValidator()
        
        // Act
        let isFirstNameValid = sut.isFirstNameValid(firstName: "Damir")
        
        // Assert
        XCTAssertTrue(isFirstNameValid, "The isFirstNameValid() should have returned TRUE for a valid first name but returned FALSE.")
    }
    
    func testSignupFormModelValidator_WhenTooShortFirstNameProvided_ShouldReturnFalse() {
        
        // Arrange
        let sut = SignupFormModelValidator()
        
        // Act
        let isFirstNameIsValid = sut.isFirstNameValid(firstName: "D")
        
        // Assert
        XCTAssertFalse(isFirstNameIsValid, "The isFirstNameValid() should have returned FALSE for a first name that shorter than 3 characters but returned TRUE.")
    }

}
