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
    
    func test_BerlinClockConverter_shouldReturnListTwoTopHoursLightsOnTwoTopHoursOff() {
        
        // Given
        let converter = BerlinClockConverter()
        let date = Date().withHours(hours: 11)
        
        // When
        let berlinClockResult = converter.convert(date: date)
        
        //Then
        XCTAssertEqual(Lights.red, berlinClockResult.topHours[0])
        XCTAssertEqual(Lights.red, berlinClockResult.topHours[1])
        XCTAssertEqual(Lights.off, berlinClockResult.topHours[2])
        XCTAssertEqual(Lights.off, berlinClockResult.topHours[3])
        
    }
    
    func test_BerlinClockConverter_shouldReturnListBottomHoursWithOneLightOn() {
        
        // Given
        let converter = BerlinClockConverter()
        let date = Date().withHours(hours: 1)
        
        // When
        let berlinClockResult = converter.convert(date: date)
        
        //Then
        XCTAssertEqual(Lights.red, berlinClockResult.bottomHours[0])
        XCTAssertEqual(Lights.off, berlinClockResult.bottomHours[1])
        XCTAssertEqual(Lights.off, berlinClockResult.bottomHours[2])
        XCTAssertEqual(Lights.off, berlinClockResult.bottomHours[3])
        
    }
    
    func test_BerlinClockConverter_shouldReturnListBottomHoursWithTwoLightsOn() {
        
        // Given
        let converter = BerlinClockConverter()
        let date = Date().withHours(hours: 12)
        
        // When
        let berlinClockResult = converter.convert(date: date)
        
        //Then
        XCTAssertEqual(Lights.red, berlinClockResult.bottomHours[0])
        XCTAssertEqual(Lights.red, berlinClockResult.bottomHours[1])
        XCTAssertEqual(Lights.off, berlinClockResult.bottomHours[2])
        XCTAssertEqual(Lights.off, berlinClockResult.bottomHours[3])
    }
    
    func test_BerlinClockConverter_shouldReturnListTopMinutesWithLightsOff() {
        
        // Given
        let converter = BerlinClockConverter()
        let date = Date().withMinutes(minutes: 0)
        
        // When
        let berlinClockResult = converter.convert(date: date)
        
        //Then
        berlinClockResult.topMinutes.forEach {
            XCTAssertEqual(Lights.off, $0)
        }
    }
    
    func test_BerlinClockConverter_shouldReturnListTopMinutesWithLightsOn() {
        
        // Given
        let converter = BerlinClockConverter()
        let date = Date().withMinutes(minutes: 55)
        
        // When
        let berlinClockResult = converter.convert(date: date)
        
        //Then
        berlinClockResult.topMinutes.forEach {
            XCTAssertTrue($0 == Lights.yellow || $0 == Lights.red)
        }
    }
    
    func test_BerlinClockConverter_shouldReturnListTopMinutesWithHalfLightsOn() {
        
        // Given
        let converter = BerlinClockConverter()
        let date = Date().withMinutes(minutes: 30)
        
        // When
        let berlinClockResult = converter.convert(date: date)
        
        //Then
        XCTAssertEqual(berlinClockResult.topMinutes[0], Lights.yellow)
        XCTAssertEqual(berlinClockResult.topMinutes[1], Lights.yellow)
        XCTAssertEqual(berlinClockResult.topMinutes[2], Lights.red)
        XCTAssertEqual(berlinClockResult.topMinutes[3], Lights.yellow)
        XCTAssertEqual(berlinClockResult.topMinutes[4], Lights.yellow)
        XCTAssertEqual(berlinClockResult.topMinutes[5], Lights.red)
        XCTAssertEqual(berlinClockResult.topMinutes[6], Lights.off)
        XCTAssertEqual(berlinClockResult.topMinutes[7], Lights.off)
        XCTAssertEqual(berlinClockResult.topMinutes[8], Lights.off)
        XCTAssertEqual(berlinClockResult.topMinutes[9], Lights.off)
        XCTAssertEqual(berlinClockResult.topMinutes[10], Lights.off)
    }
    
    
    func test_BerlinClockConverter_shouldReturnListBottomMinutesLightsOff() {
        
        // Given
        let converter = BerlinClockConverter()
        let date = Date().withMinutes(minutes: 0)
        
        // When
        let berlinClockResult = converter.convert(date: date)
        
        //Then
        berlinClockResult.bottomMinutes.forEach {
            XCTAssertEqual($0, Lights.off)
        }
    }
    
    
    func test_BerlinClockConverter_shouldReturnListBottomMinutesLightsOn() {
        
        // Given
        let converter = BerlinClockConverter()
        let date = Date().withMinutes(minutes: 4)
        
        // When
        let berlinClockResult = converter.convert(date: date)
        
        //Then
        berlinClockResult.bottomMinutes.forEach {
            XCTAssertEqual($0, Lights.yellow)
        }
    }
    
}
