import XCTest
import WindowsFoundation

final class PortabilityTests: XCTestCase {
    func testModuleImportsWithoutWindowsSDK() {
        XCTAssertTrue(true)
    }

    #if os(Windows)
    func testWindowsAPISmokeReference() {
        let _: AsyncStatus.Type = AsyncStatus.self
        let _: PropertyType.Type = PropertyType.self
        let _: Deferral.Type = Deferral.self
    }
    #endif
}
