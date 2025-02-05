import XCTest
@testable import BSSnapshotTesting
extension InlineSnapshotsValidityTests {
  func testUpdateSnapshotWithMoreLines() {
    let diffable = #######"""
    NEW_SNAPSHOT
    NEW_SNAPSHOT
    """#######

    _assertInlineSnapshot(matching: diffable, as: .lines, with: """
    NEW_SNAPSHOT
    NEW_SNAPSHOT
    """)
  }
}
