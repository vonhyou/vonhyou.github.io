---
title: expChips' Tour of Swift //  1
tags:  [swift]
---

These days, I accepted some easy problems on leetcode, in order to get familiar to a new programming language——`Swift`. In this series, I will write down basic syntax and come useful skills. Mostly, it's my personal online note.

<!--more-->

## print()

```swift
  // hello_world.swift
  print("hello, world!")
```

The code above will print `"hello, world!\n"`, and it's a **complete** program. I can run it in command line by tapping `swift hello_world.swift`. It's obviously that this language has some feature of script language.

We can add a parameter to change the last character of the string, and by doing this, the `print` will not wrap:

```swift
  // hello_world_unwrap.swift
  print("hello, world!", terminator: "")
```

And another parameter `separator:` is also important. You can use it like `terminator:`

## Comments

Swift's comments are C++ like. For example:

```swift
// luv 🍟
/* luv 📦*/
```

It's no need to explain more.

## values, variables, and constants

Swift uses different keywords.

```swift
  import Darwin // use acos()

  let Pi = acos(0.0) * 2, r: Double = 1
  var s = Pi * r * r
```

![](https://i.imgur.com/NLYkntC.png)

btw. You can interctive with swift like ruby, just tap `swift` and enter.

> You can provide a type annotation when you declare a constant or variable, to be clear about the kind of values the constant or variable can store. 

If you provide an initial value for a constant or variable at the point that it’s defined, Swift can almost always infer the type to be used for that constant or variable.

### Int

```swift
  print(Int.max)    // 9223372036854775807
  print(Int32.max)  // 2147483647
  print(UInt.max)   // 18446744073709551615
```

Digitals can be separated by `_`:

```swift
  print(2_333_444_555) // 2333444555
```