// swiftlint:disable all
// Generated using SwiftGen, by O.Halligon — https://github.com/SwiftGen/SwiftGen

// swiftlint:disable sorted_imports
import Foundation
import UIKit

// swiftlint:disable superfluous_disable_command
// swiftlint:disable file_length

// MARK: - Storyboard Scenes

// swiftlint:disable explicit_type_interface identifier_name line_length type_body_length type_name
internal enum StoryboardScene {
  internal enum Games: StoryboardType {
    internal static let storyboardName = "Games"

    internal static let initialScene = InitialSceneType<OrangeTrainingBox.SheepGameVC>(storyboard: Games.self)

    internal static let balloonGameVC = SceneType<OrangeTrainingBox.BalloonGameVC>(storyboard: Games.self, identifier: "BalloonGameVC")

    internal static let crapaudGameVC = SceneType<OrangeTrainingBox.CrapaudGameVC>(storyboard: Games.self, identifier: "CrapaudGameVC")

    internal static let sheepGameVC = SceneType<OrangeTrainingBox.SheepGameVC>(storyboard: Games.self, identifier: "SheepGameVC")

    internal static let spaceshipGameVC = SceneType<OrangeTrainingBox.SpaceshipGameVC>(storyboard: Games.self, identifier: "SpaceshipGameVC")

    internal static let starGameVC = SceneType<OrangeTrainingBox.StarGameVC>(storyboard: Games.self, identifier: "StarGameVC")
  }
  internal enum LaunchScreen: StoryboardType {
    internal static let storyboardName = "LaunchScreen"

    internal static let initialScene = InitialSceneType<UIKit.UIViewController>(storyboard: LaunchScreen.self)
  }
  internal enum Main: StoryboardType {
    internal static let storyboardName = "Main"

    internal static let initialScene = InitialSceneType<UIKit.UINavigationController>(storyboard: Main.self)

    internal static let dashboardVC = SceneType<OrangeTrainingBox.DashboardVC>(storyboard: Main.self, identifier: "DashboardVC")
  }
  internal enum Pairing: StoryboardType {
    internal static let storyboardName = "Pairing"

    internal static let initialScene = InitialSceneType<OrangeTrainingBox.BTConnectionViewController>(storyboard: Pairing.self)
  }
  internal enum Settings: StoryboardType {
    internal static let storyboardName = "Settings"

    internal static let connectionVC = SceneType<OrangeTrainingBox.BTConnectionViewController>(storyboard: Settings.self, identifier: "connectionVC")

    internal static let mainParametersVC = SceneType<OrangeTrainingBox.MainParametersVC>(storyboard: Settings.self, identifier: "mainParametersVC")
  }
}
// swiftlint:enable explicit_type_interface identifier_name line_length type_body_length type_name

// MARK: - Implementation Details

internal protocol StoryboardType {
  static var storyboardName: String { get }
}

internal extension StoryboardType {
  static var storyboard: UIStoryboard {
    let name = self.storyboardName
    return UIStoryboard(name: name, bundle: Bundle(for: BundleToken.self))
  }
}

internal struct SceneType<T: UIViewController> {
  internal let storyboard: StoryboardType.Type
  internal let identifier: String

  internal func instantiate() -> T {
    let identifier = self.identifier
    guard let controller = storyboard.storyboard.instantiateViewController(withIdentifier: identifier) as? T else {
      fatalError("ViewController '\(identifier)' is not of the expected class \(T.self).")
    }
    return controller
  }
}

internal struct InitialSceneType<T: UIViewController> {
  internal let storyboard: StoryboardType.Type

  internal func instantiate() -> T {
    guard let controller = storyboard.storyboard.instantiateInitialViewController() as? T else {
      fatalError("ViewController is not of the expected class \(T.self).")
    }
    return controller
  }
}

private final class BundleToken {}
