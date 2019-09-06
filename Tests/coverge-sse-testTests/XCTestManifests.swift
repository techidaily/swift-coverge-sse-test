import XCTest

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(coverge_sse_testTests.allTests),
    ]
}
#endif
