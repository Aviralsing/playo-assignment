<h1>Playo-assignment App<br /></h1>
<h3>Playo-assignmnet SwiftUI iOS app showcasing three screens for login OTP & Feed<br /></h3>

<h4>Built using XCode Version 13.4.1 <br /><h4/>

<h1>How to run the example?<br /></h1>

$Clone this repo<br />
$Open shell window and navigate to project folder<br />
$Run pod install<br />
$Open Playo-assignment.xcworkspace and run the project on selected device or simulator.<br />

<h1>How was it created?<br /></h1>

*Open XCode. File->New->Project->Single View App->Playo-assignment<br />
*Create Podfile with your target name and Particle pods reference (see file)<br />
*Close XCode Project<br />
*Open shell window and navigate to the project folder<br />
*Run pod install (make sure your have latest Cocoapods installed), pods will be installed and new XCode workspace file will be created.<br />
*in XCode open the new <Playo-assignment>.xcworkspace<br />
*Add bridging header - see file Playo-assignment.h for reference.<br />
*Go to project settings->build settings->Objective-C bridging header->type in Playo-assignment.h (or wherever file is located).<br />
*Create the source code and SwiftUI for your app (see ViewController.swift and ContentView for reference)<br />
*(CTRL + R)Build and run - works on simulator and device.<br />
