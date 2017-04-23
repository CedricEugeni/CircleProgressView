# CircleProgressView

![tvOS-UI](https://img.shields.io/badge/tvOS-UI%20%2F%20UX-orange.svg)
[![Carthage compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/Carthage/Carthage)

`CircleProgressView` is an Infuse like circle progress view

`CircleProgressView` is inspired by the work of [FireCore](https://firecore.com/infuse).
This library is for now a tvOS Framework target but may become an iOS one too in the near future.
The primary goal of the library is to display a completion percentage using a circle.

## Example 0%
![example00](https://image.ibb.co/e5TZO5/Apple_TV_1080p_tv_OS_10_2_14_W260_2.png)
## Example 33%
![example33](https://image.ibb.co/eXUxbQ/Apple_TV_1080p_tv_OS_10_2_14_W260_3.png)
## Example 75%
![example75](https://image.ibb.co/ifzxbQ/Apple_TV_1080p_tv_OS_10_2_14_W260.png)

## Demo		

Try `CircleProgressView` with the demo project available in this repo. *(soon)*

## Installation

### Carthage

[Carthage](https://github.com/Carthage/Carthage) is a decentralized dependency manager that builds your dependencies and provides you with binary frameworks.

You can install Carthage with [Homebrew](http://brew.sh/) using the following command:

```bash
$ brew update
$ brew install carthage
```

To integrate `CircleProgressView` into your Xcode project using Carthage, specify it in your `Cartfile`:

```
github "CedricEugeni/CircleProgressView"
```

Run `carthage update` to build the framework and drag the built `CircleProgressView.framework` (in Carthage/Build/tvOS folder) into your Xcode project (Linked Frameworks and Libraries in `Targets`).


### Manually

* Drag the `CircleProgressView.xcodeproj` file into your project.
* Add the `CircleProgressView` framework into `Embedded Binaries`.
* Near `Run` button, select `Manage scheme`.
* Select your app scheme.
* Click on `Edit`.
* Select `Build` on the left menu.
* Uncheck `Find Implicit Dependencies`. This will prevent Xcode from compiling library each time you compile your app.

## Usage

(see sample Xcode project in `/Demo`)

`CircleProgressView` is a UIView subclass. Everything goes with a property `progress` added to this class. When you set the `progress` property, this circle progress view is drawn in the frame you gave to this `UIView`.

To specify stroke and fille color, use the `tintColor` UIView attribute.

Just put a UIView in your storyboard or Xib file and tell this view its class is `CircleProgressView` in the inspector.

## Contributing to this project

If you have feature requests or bug reports, feel free to help out by sending pull requests or by [creating new issues](https://github.com/CedricEugeni/CircleProgressView/issues/new).

## License

`CircleProgressView` is distributed under the terms and conditions of the [MIT license](https://github.com/CedricEugeni/CircleProgressView/blob/master/LICENSE).

## Credits

`CircleProgressView` is brought to you by [Cédric Eugeni](https://github.com/CedricEugeni) and [contributors to the project](https://github.com/sweebi/tvProgress/graphs/contributors). If you're using `CircleProgressView` in your project, attribution would be very appreciated.