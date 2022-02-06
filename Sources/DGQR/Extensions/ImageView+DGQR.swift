import UIKit

extension DGQRWrapper where Base: DQCrossPlatformImageView {
    @discardableResult
    public func setQr(from string: String) -> UIImage? {
        let data = string.data(using: String.Encoding.ascii)
        
        if let filter = CIFilter(name: "CIQRCodeGenerator") {
            filter.setValue(data, forKey: "inputMessage")
            let transform = CGAffineTransform(scaleX: 3, y: 3)
            if let output = filter.outputImage?.transformed(by: transform) {
                let image = UIImage(ciImage: output)
                self.base.image = image
                return image
            }
        }
        
        return nil 
    }
}
