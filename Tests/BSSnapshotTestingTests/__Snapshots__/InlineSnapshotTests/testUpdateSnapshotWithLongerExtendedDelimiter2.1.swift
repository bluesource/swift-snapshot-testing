import XCTest
@testable import BSSnapshotTesting
extension InlineSnapshotsValidityTests {
  func testUpdateSnapshotWithLongerExtendedDelimiter2() {
    let diffable = #######"""
    \"""#
    """#######

    _assertInlineSnapshot(matching: diffable, as: .lines, with: ##"""
    \"""#
    """##)
  }
}
