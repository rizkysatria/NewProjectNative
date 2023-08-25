require_relative '../NewProject/node_modules/react-native/scripts/react_native_pods'

platform :ios, '11.0'
install! 'cocoapods', :deterministic_uuids => false


target 'NewProjectNative' do
  # Comment the next line if you don't want to use dynamic frameworks
  # use_frameworks!

  flags = get_default_flags()
   
  use_react_native!(
    :path => '../NewProject/node_modules/react-native',
    # to enable hermes on iOS, change `false` to `true` and then install pods
    :hermes_enabled => true,
    :fabric_enabled => true,
    # An absolute path to your application root.
    :app_path => "#{Pod::Config.instance.installation_root}/.."
  )


  use_flipper!()

  post_install do |installer|
    react_native_post_install(installer)
  end

end
