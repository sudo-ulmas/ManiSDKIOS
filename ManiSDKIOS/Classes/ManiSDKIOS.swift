import Flutter
import FlutterPluginRegistrant
import ManiSDK

public class ManiSDKIOS  {
    private var hostInfo: HostInfo = HostInfo.make(withAppName: "payme", locale: "uz")
    private var api: ManiAuthApi!

    
    
    private var flutterEngine: FlutterEngine?
    private var flutterViewController: FlutterViewController?
    
    public init() {
        flutterEngine = FlutterEngine(name: "Mani Flutter Engine")
        flutterEngine?.run()
        GeneratedPluginRegistrant.register(with: flutterEngine!);
  
    }
    
    public func start(from viewController: UIViewController, _ host: HostAppApi & NSObjectProtocol) {
        guard let flutterEngine = flutterEngine else {
            return
        }
        SetUpHostAppApi(flutterEngine.binaryMessenger,host )
        api = ManiAuthApi.init(binaryMessenger: flutterEngine.binaryMessenger)
        flutterViewController = FlutterViewController(engine: flutterEngine, nibName: nil, bundle: nil)
        hostInfo.appName = "Chinor"
        hostInfo.locale = "uz"
           api.send(hostInfo) { (error) in
             if let error = error {
               print(error)
             }
           }
        guard let flutterViewController = flutterViewController else {
            return
        }
        
        viewController.addChildViewController(flutterViewController)
             flutterViewController.view.frame = viewController.view.bounds
             viewController.view.addSubview(flutterViewController.view)
             flutterViewController.didMove(toParentViewController: viewController)
    }
    
    public func removeFlutterViewController() {
        guard let flutterViewController = flutterViewController else {
            return
        }

        // Notify the view controller that it will be removed
        flutterViewController.willMove(toParentViewController: nil)
        flutterViewController.view.removeFromSuperview()
        flutterViewController.removeFromParentViewController()

        // Optionally, clear the reference to the FlutterViewController
        self.flutterViewController = nil
    }
}
