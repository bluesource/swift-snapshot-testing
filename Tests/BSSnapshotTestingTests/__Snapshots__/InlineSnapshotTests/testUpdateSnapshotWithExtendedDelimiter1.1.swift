import XCTest
@testable import BSSnapshotTesting
extension InlineSnapshotsValidityTests {
  func testUpdateSnapshotWithExtendedDelimiter1() {
    let diffable = #######"""
    \"
    """#######

    _assertInlineSnapshot(matching: diffable, as: .lines, with: #"""
    \"
    """#)
  }
}
