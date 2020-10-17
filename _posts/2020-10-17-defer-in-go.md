---
title: Defer in Go
tags:  [go, feature]
---

> 很多现代的编程语言中都有 defer 关键字，Go 语言的 defer 会在当前函数或者方法返回之前执行传入的函数。它会经常被用于关闭文件描述符、关闭数据库连接以及解锁资源。

<!--more-->

When it comes to keyword `defer` in go, I felt confused.

The teacher showed a piece of code:

```go
func main() {
  i := 1
  defer fmt.Println(i + 1)

  i++
  fmt.Println("hello, world!")
}
```

I thought that it must print `"hello, world!"` and `3` at first. But after typing and runing, I was totally shocked —— It's output is `"hello, world"` and `2`!

What actually gets printed as a two,
because that i +1 is evaluated right there when the first statement,
when it hits the differed statement,
the i +1 is evaluated and at that time,
i is a one, so i +1 is a two.
So, later when the differed statement actually gets
executed it's still prints a two.