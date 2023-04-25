# how could i publish or build multiple ios apps sharing a same source code, please include referrence link

One way to publish or build multiple iOS apps sharing the same source code is by using Xcode's target feature. Targets allow you to create different versions of your app, each with its own settings, icons, and bundle identifier, while still sharing the same underlying codebase.

Here are the general steps you can follow:

Open your Xcode project and click on the project file in the Project Navigator.
Click on the "+" button at the bottom of the Targets section to add a new target.
Choose "Application" as the template for the new target.
Configure the target's settings, such as the product name, bundle identifier, and icons.
Repeat steps 2-4 for each additional app you want to build.
Add any conditional code or feature flags in your app code to enable or disable certain features for different targets.
Build and run each target separately to generate separate app bundles.
Here are some helpful resources that provide more detailed information on using targets in Xcode:

Xcode Targets and Schemes: https://www.appcoda.com/xcode-targets/
Creating Multiple Targets in Xcode: https://medium.com/@sunnyleeyun/creating-multiple-targets-in-xcode-31d7b2e04a4e
Building Multiple Versions of Your iOS App Using Xcode Targets: https://blog.usejournal.com/building-multiple-versions-of-your-ios-app-using-xcode-targets-9c70ee5e5e31
