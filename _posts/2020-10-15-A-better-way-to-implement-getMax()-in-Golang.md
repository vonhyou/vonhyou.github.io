---
title: A better way to implement getMax() in Golang
tags:  [go, effective]
---

In previous assignment, I was asked to implement a function which can pick the biggest number in a slice.

By learning on Coursera, I found a better way to do this.

<!--more-->

## Ordinary Method

When I started learning Programming in C++, the text book told me that the best way to pick the biggest number in an array is like this:

```c++
int getMax(int *a, int len) {
  int flag = a[0];
  for (int i = 1; i < len; ++i)
    if (a[i] > flag)
      flag = a[i];
  return flag
}
```

It's simple, understandable and efficient. I cannot find a better algorithm to work as well as this (in C++).

## The "Better" Way in Golang

At the beginning, I wrote a same function as usual in Go like this:

```go
func getMax(arr []int, n int) int {
  var flag int = arr[0]
  for i := 1; i < n; i++ {
    if arr[i] > flag {
      flag = arr[i]
    }
  }
  return flag
}
```

~~(btw. Golang is really really ulgy and hard to write!)~~

Ok, I had completed the task perfectly. But I learned a new way to do the same thing elegantly. Furthermore, it uses some excellent features like ruby. Now let me show you the code.

```go
func getMax(vals ...int) int {
  flag := MINN
  for _, v range vals {
    if v > flag {
      flag = v
    }
  }
  return flag
}
```

`...` is a powerful sign and widely used in Go(and very very misleading). It can unfold slices and arrays.

After writing this post, I suddenly felt it was nothing. I can write this function more beautiful by using another languages.

Starting with C++ does really restrict my mind.Every time I use languages such as ruby, I felt like dancing with tight feet. It's bad.

That's all, thank you. I felt worse.

