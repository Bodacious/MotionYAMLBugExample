class AppDelegate
  
  def window
    @window ||= UIWindow.alloc.initWithFrame(UIScreen.mainScreen.bounds)
  end
  
  def controller
    @controller ||= UIViewController.alloc.initWithNibName(nil, bundle: nil)
  end
  
  def application(application, didFinishLaunchingWithOptions:launchOptions)
    file_path    = NSBundle.mainBundle.pathForResource('example', ofType: 'yaml')
    file_content = File.read(file_path)
    hash         = YAML.load(file_content)
    message      = hash.nil? ? "YAML.load() returned nil" : hash.inspect 
    NSLog(message)
    window.rootViewController = controller
    window.makeKeyAndVisible
    App.alert(message)
    true
  end
end
