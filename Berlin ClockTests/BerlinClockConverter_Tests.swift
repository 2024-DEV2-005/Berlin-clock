//
//  BerlinClockConverter_Tests.swift
//  Berlin ClockTests
//
//  Created by KKAR on 26/12/2023.
//

import XCTest
@testable import Berlin_Clock

// Naming Structure: tests_UnitOfWork_StateUnderTest_ExpectedBehavior

// Testing Structure: Given, When, Then

final class BerlinClockConverter_Tests: XCTestCase {
    
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func test_BerlinClockConverter_seconds_shouldBeFalse() {
        
        // Given
        let converter = BerlinClockConverter()
        let date =  Date().withSeconds(seconds: 1)
        
        
        // When
        let berlinClockResult = converter.convert(date: date)
        
        
        // Then
        XCTAssertEqual(Lights.off, berlinClockResult.seconds)
        
    }
    
    
    func test_BerlinClockConverter_seconds_shouldBeTrue() {
        
        // Given
        let converter = BerlinClockConverter()
        let date =  Date().withSeconds(seconds: 0)
        
        
        // When
        let berlinClockResult = converter.convert(date: date)
        
        
        // Then
        XCTAssertEqual(Lights.yellow, berlinClockResult.seconds)
        
    }
    
    func test_BerlinClockConverter_shouldReturnListAllTopHoursLightsOff() {
        
        // Given
        let converter = BerlinClockConverter()
        let date = Date().withHours(hours: 3)
        
        // When
        let berlinClockResult = converter.convert(date: date)
        
        //Then
        berlinClockResult.topHours.forEach {
            XCTAssertEqual(Lights.off, $0)
        }
        
    }
    
    func test_BerlinClockConverter_shouldReturnListAllTopHoursLightsOn() {
        
        // Given
        let converter = BerlinClockConverter()
        let date = Date().withHours(hours: 20)
        
        // When
        let berlinClockResult = converter.convert(date: date)
        
        //Then
        berlinClockResult.topHours.forEach {
            XCTAssertEqual(Lights.red, $0)
        }
        
    }
    
}
