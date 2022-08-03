import XCTest
@testable import BSSnapshotTesting
extension InlineSnapshotsValidityTests {
  func testCreateSnapshotWithExtendedDelimiter1() {
    let diffable = #######"""
    \"
    """#######

    _assertInlineSnapshot(matching: diffable, as: .lines, with: #"""
    \"
    """#)
  }
}
