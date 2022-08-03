import XCTest
@testable import BSSnapshotTesting
extension InlineSnapshotsValidityTests {
  func testCreateSnapshotWithExtendedDelimiterSingleLine2() {
    let diffable = #######"""
    \"""#
    """#######

    _assertInlineSnapshot(matching: diffable, as: .lines, with: ##"""
    \"""#
    """##)
  }
}
