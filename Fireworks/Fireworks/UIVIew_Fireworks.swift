////
////  UIVIew_Fireworks.swift
////  Fireworks
////
////  Created by Valerie 👩🏼‍💻 on 27/03/2021.
////
//
//import Foundation
//
//public class UISparkView: UIView {}
//
//
//protocol UISparkViewFactory {
//    func create(with data: SparkViewFactoryData) -> UISparkView
//}
//
//class CircleColorSparkViewFactory: UISparkViewFactory {
//    var colors: [UIColor] {
//        return UIColor.sparkColorSet
//    }
//    
//    func create(with data: SparkViewFactoryData) -> UISparkView {
//        let color = colors[data.index % colors.count]
//        return CircleColorSparkView(color: color, size: data.size)
//    }
//}
//
//public final class ImageSparkView: UISparkView {
//
//    public init(image: UIImage, size: CGSize) {
//        super.init(frame: CGRect(origin: .zero, size: size))
//
//        let imageView = UIImageView(frame: self.bounds)
//        self.addSubview(imageView)
//
//        imageView.image = image
//    }
//
//    required init?(coder aDecoder: NSCoder) {
//        super.init(coder: aDecoder)
//    }
//}
//
//public struct ImageSparkViewFactoryData: SparkViewFactoryData {
//
//    public let image: UIImage
//    public let size: CGSize
//    public let index: Int
//}
//
//
//protocol SparkViewFactoryData {
//    var size: CGSize { get }
//    var index: Int { get }
//}
//
//
//public struct ImageSparkViewFactory: UISparkViewFactory {
//
//    public func create(with data: SparkViewFactoryData) -> UISparkView {
//        guard let data = data as? ImageSparkViewFactoryData else {
//            fatalError("Wrong data.")
//        }
//
//        return ImageSparkView(image: data.image, size: data.size)
//    }
//}
//
//
//public final class CircleColorSparkView: UISparkView {
//
//    public init(color: UIColor, size: CGSize) {
//        super.init(frame: CGRect(origin: .zero, size: size))
//        self.backgroundColor = color
//        self.layer.cornerRadius = self.frame.width / 2.0
//    }
//
//    required init?(coder aDecoder: NSCoder) {
//        super.init(coder: aDecoder)
//    }
//}
//
//extension UIColor {
//
//    public static var sparkColorSet: [UIColor] = {
//        return [
//            UIColor(red:0.89, green:0.58, blue:0.70, alpha:1.00),
//            UIColor(red:0.96, green:0.87, blue:0.62, alpha:1.00),
//            UIColor(red:0.67, green:0.82, blue:0.94, alpha:1.00),
//            UIColor(red:0.54, green:0.56, blue:0.94, alpha:1.00),
//        ]
//    }()
//}
