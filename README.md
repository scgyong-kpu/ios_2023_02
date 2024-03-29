# iOS_2023_02 수업 개요
2023년 1월 30일(월) 부터 2월 3일(금) 까지 30시간에 걸쳐 진행되는 방학특강

# 수업 내용
* Swift Tour 01 ~ 06
* Playground
* ImageSwitcher
* MoreControls
* Flags
* Gestures
* MemoryGame
* AlbumList
* Map

# 일정

## 1/30(월)
* Swift Tour 01
* Storyboard App
* Simple SwiftUI App
  * Preview, Run, Debug,
  * `Text`, `Image`, `Circle`, `Button`, `Capsule`, `Slider`, `TextField`, `Rectangle`, `RoundedRectangle`, 
  * `HStack`, `VStack`, `ZStack`,
  * `ViewModifier`
    * `font`, `foregroundColor`, `background`, `frame`, `padding`, 
  * SF Symbols
  * Button actions
  * `@State` property wrapper, binding
  * Refactor: Extract Subview
* Swift Tour 02
* ImageSwitcher
  * `Spacer`
  * `resizable`, `disabled`
  * Refactor: `TopButton`
* SF Symbols
  * `folder.badge.plus`
  * `trash.circle`
  * `pencil.circle.fill`
  * `folder.circle`
  * `paperplane.circle.fill`
  * `xmark.bin.fill`
  * `arrow.left`, `arrow.right`
  * `arrow.left.circle`, `arrow.right.circle`

## 1/31(화)
* ImageSwitcher
* Controls/Modifiers
  * `LinearGradiant`
  * `aspectRatio(contentMode: .fit)`, `background`, `ignoresSafeArea`, `shadow`

* Swift Tour 03
  * Flow Control
    * `if`, `if-let`, `if-else`, `guard`, `guard-let`
    * `switch-case`, `fallthrough`, `break`, `default`
    * `for-in`, `while`, `repeat-while`
  * XCode playground preview
  * Optionals
* MoreControls
  * `rotationEffect`, `Angle.degrees()`
  * `animation`, `easeIn`
* Swift Tour 04
  * Function
    * Naming
    * Variadic parameter
    * func as parameter, func as return
  * Tuple
  * Closure
* `Nations.swift` generation
* Flags
  * `List`, `ForEach`, `Section`
  * `listStyle`, `SidebarListStyle`
  * Extract View: `CountryView` 
    * `fontWeight`
  * `onAppear`
  * `NavigationView`, `NavigationBar`, `NavigationLink`
    * `navigationBarTitle`, `navigationViewStyle`, `DisclosureIndicator`, `DetailDisclusureIndicator`
  * `UIColor` extension: lighter, darker
  * `CountryDetailView` and Previews
* SF Symbols
  * `pencil.tip.crop.circle.badge.arrow.forward`
  * `goforward.plus`

## 2/1(수)
* Swift Tour 05
  * Class
    * `class`
    * Inheritance
    * Pylymorphism: Good vs Bad practices
  * Property
    * Stored vs Computed
    * Property Observers: `willSet`, `didSet`
  * Optional Chain
* GestureSample
  * Gestures
    * `TapGesture`, `RotationGesture`, `LongPressGesture`, `DragGesture`, `MagnificationGesture`
    * Discrete vs Continuous
  * `spinning` forever animation
  * Drawing
    * Path
    * `StrokeStyle`: width, cap, join
  * Gradients
    * `LinearGradient`, `RadialGradient`
* Swift Tour 06
  * Enumeration
    * Basic
    * RawType
    * Function
    * Value Association
  * Struct
    * Reference Type vs Value Type
  * Protocol
  * Extension
    * `mutating` func
  * Generics
