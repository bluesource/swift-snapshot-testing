import XCTest
@testable import BSSnapshotTesting
extension InlineSnapshotsValidityTests {
  func testCreateSnapshotWithExtendedDelimiter2() {
    let diffable = #######"""
    \"""#
    """#######

    _assertInlineSnapshot(matching: diffable, as: .lines, with: ##"""
    \"""#
    """##)
  }
}
