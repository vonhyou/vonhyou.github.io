---
title: WSL下Rust的安裝
tags: [rust]
---

WSL下安裝Rust有一點小坑，本文記錄一下

<!--more-->

## 安裝Rust

```bash
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
```

基本上到這一步，安裝就已經完成了，但是我在新建項目的時候出了點小問題：

## 解決錯誤 **error: no default toolchain configured**

```bash
rustup install stable
rustup default stable
```

到這裏，新建項目應該就沒問題了。

但是我還遇到一個小問題，，很討厭的小問題，，，

## 解決錯誤 **thread 'main' panicked at 'assertion failed: `(left == right)`**

唔，，，爲了解決這個問題花了我不少時間，，

問題是WSLv1造成的，也就是說最簡單的解決方案是升級WSL到WSL2

跟着微軟的[官方文檔](https://docs.microsoft.com/en-us/windows/wsl/install-win10#update-to-wsl-2)可以很快解決

但是人算不如天算，，我的windows 10死活沒法升級到2004，也就沒辦法安裝wsl2，這裏github上的一個[issue](https://github.com/rust-lang/rustup/issues/2245)給出了另外兩個解決方案：一個是使用舊版本的linux——這個更麻煩，，另一個成功的解決了我的問題：

在bashrc（或者zshrc）裏加入：

```bash
export RUSTUP_IO_THREADS=1
```

然後運行rustup問題迎刃而解，，，

![](https://imgur.com/9uDuNnG.png)
