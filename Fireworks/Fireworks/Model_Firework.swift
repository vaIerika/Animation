////
////  Model_Firework.swift
////  Fireworks
////
////  Created by Valerie 👩🏼‍💻 on 27/03/2021.
////
//
//import SwiftUI
//
//protocol SparkTrajectory {
//    var points: [CGPoint] { get set }
//    var path: UIBezierPath { get }
//}
//
//struct CubicBezierTrajectory: SparkTrajectory {
//    var points = [CGPoint]()
//    init(_ x0: CGFloat, _ y0: CGFloat,
//         _ x1: CGFloat, _ y1: CGFloat,
//         _ x2: CGFloat, _ y2: CGFloat,
//         _ x3: CGFloat, _ y3: CGFloat) {
//        
//        self.points.append(contentsOf: [
//            CGPoint(x: x0, y: y0),
//            CGPoint(x: x1, y: y1),
//            CGPoint(x: x2, y: y2),
//            CGPoint(x: x3, y: y3)
//        ])
//    }
//    
//    var path: UIBezierPath {
//        guard points.count == 4 else { fatalError("4 points required") }
//        
//        let path = UIBezierPath()
//        path.move(to: points[0])
//        path.addCurve(to: points[3], controlPoint1: points[1], controlPoint2: points[2])
//        return path
//    }
//}
//
//protocol SparkTrajectoryFactory { }
//
//protocol ClassicSparkTrajectoryFactoryProtocol: SparkTrajectoryFactory {
//    func randomTopRight() -> SparkTrajectory
//    func randomBottomRight() -> SparkTrajectory
//}
//
//final class ClassicSparkTrajectoryFactory: ClassicSparkTrajectoryFactoryProtocol {
//    private lazy var topRight: [SparkTrajectory] = {
//        return [
//            CubicBezierTrajectory(0.00, 0.00, 0.31, -0.46, 0.74, -0.29, 0.99, 0.12),
//            CubicBezierTrajectory(0.00, 0.00, 0.31, -0.46, 0.62, -0.49, 0.88, -0.19),
//            CubicBezierTrajectory(0.00, 0.00, 0.10, -0.54, 0.44, -0.53, 0.66, -0.30),
//            CubicBezierTrajectory(0.00, 0.00, 0.19, -0.46, 0.41, -0.53, 0.65, -0.45),
//        ]
//    }()
//    
//    private lazy var bottomRight: [SparkTrajectory] = {
//        return [
//            CubicBezierTrajectory(0.00, 0.00, 0.42, -0.01, 0.68, 0.11, 0.87, 0.44),
//            CubicBezierTrajectory(0.00, 0.00, 0.35, 0.00, 0.55, 0.12, 0.62, 0.45),
//            CubicBezierTrajectory(0.00, 0.00, 0.21, 0.05, 0.31, 0.19, 0.32, 0.45),
//            CubicBezierTrajectory(0.00, 0.00, 0.18, 0.00, 0.31, 0.11, 0.35, 0.25),
//        ]
//    }()
//    
//    func randomTopRight() -> SparkTrajectory {
//        topRight[Int(arc4random_uniform(UInt32(topRight.count)))]
//    }
//    
//    func randomBottomRight() -> SparkTrajectory {
//        bottomRight[Int(arc4random_uniform(UInt32(topRight.count)))]
//    }
//}
//
//
//
//typealias FireworkSpark = (sparkView: UISparkView, trajectory: SparkTrajectory)
//
//protocol Firework {
//    
//    /// defines origin of firework
//    var origin: CGPoint { get set }
//    
//    /// defines trajectory scale
//    var scale: CGFloat { get set }
//    
//    /// defines size of a single spark
//    var sparkSize: CGSize { get set }
//    
//    /// returns trajectories
//    var trajectoryFactory: SparkTrajectoryFactory { get }
//    
//    /// returns spark views
//    var sparkViewFactory: UISparkViewFactory { get }
//    
//    func sparkViewFactoryData(at index: Int) -> SparkViewFactoryData
//    func sparkView(at index: Int) -> UISparkView
//    func trajectory(at index: Int) -> SparkTrajectory
//}
//
//extension Firework {
//    
//    /// helper method that returns spark view and corresponding trajectory
//    func spark(at index: Int) -> FireworkSpark {
//        FireworkSpark(sparkView(at: index), trajectory(at: index))
//    }
//}
//
//extension SparkTrajectory {
//    
//    /// scales a trajectory so it fits to the view requirements in terms of size of a trajectory, use before 'shift but after all trasnforms
//    func scale(by value: CGFloat) -> SparkTrajectory {
//        var copy = self
//        (0..<self.points.count).forEach { copy.points[$0].multiply(by: value) }
//        
//        return copy
//    }
//    
//    /// flips trajectory horizontally
//    func flip() -> SparkTrajectory {
//        var copy = self
//        (0..<points.count).forEach { copy.points[$0].x *= -1 }
//        
//        return copy
//    }
//    
//    /// shifts a trajectory by (x, y), applies to each point. Use after akk transformations and scaling
//    func shift(to point: CGPoint) -> SparkTrajectory {
//        var copy = self
//        let vector = CGVector(dx: point.x, dy: point.y)
//        (0..<points.count).forEach { copy.points[$0].add(vector: vector) }
//        
//        return copy
//    }
//}
//
//class ClassicFirework: Firework {
//
//    private struct FlipOptions: OptionSet {
//        let rawValue: Int
//        static let horizontally = FlipOptions(rawValue: 1 << 0)
//        static let vertically = FlipOptions(rawValue: 1 << 1)
//    }
//    
//    private enum Quarter {
//        case topRight
//        case bottomRight
//        case bottomLeft
//        case topLeft
//    }
//    
//    var origin: CGPoint
//    var scale: CGFloat
//    var sparkSize: CGSize
//    
//    var maxChangeValue: Int {
//        return 10
//    }
//    
//    var trajectoryFactory: SparkTrajectoryFactory {
//        return ClassicSparkTrajectoryFactory()
//    }
//    
//    var classicTrajectoryFactory: ClassicSparkTrajectoryFactoryProtocol {
//        return self.trajectoryFactory as! ClassicSparkTrajectoryFactoryProtocol
//    }
//    
//    var sparkViewFactory: UISparkViewFactory {
//        return CircleColorSparkViewFactory()
//    }
//    
//    private var quarters = [Quarter]()
//    
//    init(origin: CGPoint, sparkSize: CGSize, scale: CGFloat) {
//        self.origin = origin
//        self.scale = scale
//        self.sparkSize = sparkSize
//        self.quarters = self.shuffledQuarters()
//    }
//    
//    func sparkViewFactoryData(at index: Int) -> SparkViewFactoryData {
//        return DefaultSparkViewFactoryData(size: self.sparkSize, index: index)
//    }
//    
//    func sparkView(at index: Int) -> UISparkView {
//        return self.sparkViewFactory.create(with: self.sparkViewFactoryData(at: index))
//    }
//    
//    func trajectory(at index: Int) -> SparkTrajectory {
//        let quarter = self.quarters[index]
//        let flipOptions = self.flipOptions(for: quarter)
//        let changeVector = self.randomChangeVector(flipOptions: flipOptions, maxValue: self.maxChangeValue)
//        let sparkOrigin = self.origin.adding(vector: changeVector)
//        return self.randomTrajectory(flipOptions: flipOptions).scale(by: self.scale).shift(to: sparkOrigin)
//    }
//    
//    private func flipOptions(`for` quarter: Quarter) -> FlipOptions {
//        var flipOptions: FlipOptions = []
//        if quarter == .bottomLeft || quarter == .topLeft {
//            flipOptions.insert(.horizontally)
//        }
//        
//        if quarter == .bottomLeft || quarter == .bottomRight {
//            flipOptions.insert(.vertically)
//        }
//        
//        return flipOptions
//    }
//    
//    private func shuffledQuarters() -> [Quarter] {
//        var quarters: [Quarter] = [
//            .topRight, .topRight,
//            .bottomRight, .bottomRight,
//            .bottomLeft, .bottomLeft,
//            .topLeft, .topLeft
//        ]
//        
//        var shuffled = [Quarter]()
//        for _ in 0..<quarters.count {
//            let idx = Int(arc4random_uniform(UInt32(quarters.count)))
//            shuffled.append(quarters[idx])
//            quarters.remove(at: idx)
//        }
//        
//        return shuffled
//    }
//    
//    private func randomTrajectory(flipOptions: FlipOptions) -> SparkTrajectory {
//        var trajectory: SparkTrajectory
//        
//        if flipOptions.contains(.vertically) {
//            trajectory = self.classicTrajectoryFactory.randomBottomRight()
//        } else {
//            trajectory = self.classicTrajectoryFactory.randomTopRight()
//        }
//        
//        return flipOptions.contains(.horizontally) ? trajectory.flip() : trajectory
//    }
//    
//    private func randomChangeVector(flipOptions: FlipOptions, maxValue: Int) -> CGVector {
//        let values = (self.randomChange(maxValue), self.randomChange(maxValue))
//        let changeX = flipOptions.contains(.horizontally) ? -values.0 : values.0
//        let changeY = flipOptions.contains(.vertically) ? values.1 : -values.0
//        return CGVector(dx: changeX, dy: changeY)
//    }
//    
//    private func randomChange(_ maxValue: Int) -> CGFloat {
//        return CGFloat(arc4random_uniform(UInt32(maxValue)))
//    }
//}
//
//protocol SparkViewAnimator {
//    func animate(spark: FireworkSpark, duration: TimeInterval)
//}
//
//struct ClassicFireworkAnimator: SparkViewAnimator {
//    func animate(spark: FireworkSpark, duration: TimeInterval) {
//        //spark.sparkView.isHidden = false // show previously hidden spark view
//        
//        CATransaction.begin()
//        
//        // Position
//        let positionAnim = CAKeyframeAnimation(keyPath: "position")
//        positionAnim.path = spark.trajectory.path.cgPath
//        positionAnim.calculationMode = CAAnimationCalculationMode.linear
//        positionAnim.rotationMode = CAAnimationRotationMode.rotateAuto
//        positionAnim.duration = duration
//        
//        // Scale
//        let randomMaxScale = 1.0 + CGFloat(arc4random_uniform(7)) / 10.0
//        let randomMinScale = 0.5 + CGFloat(arc4random_uniform(3)) / 10.0
//        
//        let fromTransform = CATransform3DIdentity
//        let byTransform = CATransform3DScale(fromTransform, randomMaxScale, randomMaxScale, randomMaxScale)
//        let toTransform = CATransform3DScale(CATransform3DIdentity, randomMinScale, randomMinScale, randomMinScale)
//        let transformAnim = CAKeyframeAnimation(keyPath: "transform")
//        
//        transformAnim.values = [
//            NSValue(caTransform3D: fromTransform),
//            NSValue(caTransform3D: byTransform),
//            NSValue(caTransform3D: toTransform)
//        ]
//        
//        transformAnim.duration = duration
//        transformAnim.timingFunction = CAMediaTimingFunction(name: CAMediaTimingFunctionName.easeOut)
//        spark.sparkView.layer.transform = toTransform
//        
//        // Opacity
//        let opacityAnim = CAKeyframeAnimation(keyPath: "opacity")
//        opacityAnim.values = [1.0, 0.0]
//        opacityAnim.keyTimes = [0.95, 0.98]
//        opacityAnim.duration = duration
//        spark.sparkView.layer.opacity = 0.0
//        
//        // Group
//        let groupAnimation = CAAnimationGroup()
//        groupAnimation.animations = [positionAnim, transformAnim, opacityAnim]
//        groupAnimation.duration = duration
//        
//        CATransaction.setCompletionBlock({
//        spark.sparkView.removeFromSuperview()
//        })
//        
//        spark.sparkView.layer.add(groupAnimation, forKey: "spark-animation")
//        
//        CATransaction.commit()
//    }
//}
//
//public struct DefaultSparkViewFactoryData: SparkViewFactoryData {
//    public let size: CGSize
//    public let index: Int
//}
//
//extension CGPoint {
//    mutating func add(vector: CGVector) {
//        self.x += vector.dx
//        self.y += vector.dy
//    }
//    
//    func adding(vector: CGVector) -> CGPoint {
//        var copy = self
//        copy.add(vector: vector)
//        return copy
//    }
//    
//    mutating func multiply(by value: CGFloat) {
//        self.x *= value
//        self.y *= value
//    }
//}
//
//extension Color {
//    static var sparkColorSet: [Color] = {
//        return [
//            Color(red:0.89, green:0.58, blue:0.70),
//            Color(red:0.96, green:0.87, blue:0.62),
//            Color(red:0.67, green:0.82, blue:0.94),
//            Color(red:0.54, green:0.56, blue:0.94)
//        ]
//    }()
//}
