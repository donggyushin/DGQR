import UIKit
import Foundation

public typealias DQCrossPlatformImageView = UIImageView
public typealias DQCrossPlatformImage = UIImage

/// Wrapper for DGQR compatible types. This type provides an extension point for
/// convenience methods in DGQR.
public struct DGQRWrapper<Base> {
    public let base: Base
    public init(_ base: Base) {
        self.base = base
    }
}

/// Represents an object type that is compatible with DGQR. You can use `dq` property to get a
/// value in the namespace of DGQR.
public protocol DGQRCompatible: AnyObject {}

/// Represents a value type that is compatible with Kingfisher. You can use `dq` property to get a
/// value in the namespace of DGQR.
public protocol DGQRCompatibleValue {}

extension DGQRCompatible {
    /// Gets a namespace holder for DGQR compatible types.
    public var dq: DGQRWrapper<Self> {
        get { return DGQRWrapper(self) }
        set { }
    }
}

extension DGQRCompatibleValue {
    /// Gets a namespace holder for Kingfisher compatible types.
    public var dq: DGQRWrapper<Self> {
        get { return DGQRWrapper(self) }
        set { }
    }
}

extension DQCrossPlatformImageView: DGQRCompatible {}
extension DQCrossPlatformImage: DGQRCompatibleValue {}
