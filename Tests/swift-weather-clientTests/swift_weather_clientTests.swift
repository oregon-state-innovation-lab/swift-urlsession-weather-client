import XCTest
@testable import swift_weather_client

final class swift_weather_clientTests: XCTestCase {
    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(WeatherClient().text, "Hello, World!")
    }
}
