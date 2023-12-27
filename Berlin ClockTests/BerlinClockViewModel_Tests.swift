//
//  BerlinClockViewModel_Tests.swift
//  Berlin ClockTests
//
//  Created by KKAR on 27/12/2023.
//

import XCTest
@testable import Berlin_Clock

// Naming Structure: tests_UnitOfWork_StateUnderTest_ExpectedBehavior

// Testing Structure: Given, When, Then

final class BerlinClockViewModel_Tests: XCTestCase {
    
    func test_BerlinClockViewModel_init_berlinClockShouldBeInitializedAtCreation() {
        // Given
        let dateProvider = {
            let date = Date().withHours(hours: 0).withMinutes(minutes: 0).withSeconds(seconds: 0)
            
            return date
        }
        let converter = BerlinClockConverter()
        
        // When
        let viewModel = BerlinClockViewModel(dateProvider: dateProvider, converter: converter)

        // Then
        let berlinClock = viewModel.berlinClock
        
        XCTAssertEqual(Lights.yellow, berlinClock.seconds)
        
        berlinClock.topMinutes.forEach {
            XCTAssertEqual(Lights.off, $0)
        }  
        berlinClock.bottomMinutes.forEach {
            XCTAssertEqual(Lights.off, $0)
        }   
        berlinClock.topHours.forEach {
            XCTAssertEqual(Lights.off, $0)
        }
        berlinClock.bottomHours.forEach {
            XCTAssertEqual(Lights.off, $0)
        }
    }


}
