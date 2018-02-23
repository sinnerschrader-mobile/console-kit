import Debugging
import Foundation

/// Commands should only throw these errors
public struct CommandError: Debuggable {
    public let identifier: String
    public let reason: String
    public var sourceLocation: SourceLocation?
    public var stackTrace: [String]

    internal init(identifier: String, reason: String, source: SourceLocation) {
        self.identifier = identifier
        self.reason = reason
        self.sourceLocation = source
        self.stackTrace = CommandError.makeStackTrace()
    }
}
