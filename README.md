# marcom_qr

Marcom Arabia Qr Scanner

- 🖼️ QR code image included in assets: `/assets/img/REG1234.png` (or similar)
- Connected To AWS EC2 API (url can be changed fron /lib/core/constants/newtwork_const.dart)
- The design was inspired by: https://dribbble.com/shots/24204854-Enable-Camera-Access-Interaction

When rinning in IOS update podfile post_install to:

post_install do |installer|
  installer.pods_project.targets.each do |target|
    flutter_additional_ios_build_settings(target)
    target.build_configurations.each do |config|

          config.build_settings['GCC_PREPROCESSOR_DEFINITIONS'] ||= [
            '$(inherited)',

            #dart: PermissionGroup.camera
            'PERMISSION_CAMERA=1',

          ]

     end
  end
end

## Demo Video Link
https://drive.google.com/file/d/1xLlem7Sz17LY5ds5mbGqyP8GFqzfWyc3/view?usp=sharing
