import XCTest
@testable import BSSnapshotTesting
extension InlineSnapshotsValidityTests {
  func testCreateSnapshotWithLongerExtendedDelimiter2() {
    let diffable = #######"""
    \"""#
    """#######

    _assertInlineSnapshot(matching: diffable, as: .lines, with: ##"""
    \"""#
    """##)
  }
}
