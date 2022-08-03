import XCTest
@testable import BSSnapshotTesting
extension InlineSnapshotsValidityTests {
  func testCreateSnapshotWithShorterExtendedDelimiter2() {
    let diffable = #######"""
    \"""#
    """#######

    _assertInlineSnapshot(matching: diffable, as: .lines, with: ##"""
    \"""#
    """##)
  }
}
