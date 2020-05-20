import XCTest
@testable import DarkMode

final class DarkModeTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(DarkMode().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample)
    ]
}
