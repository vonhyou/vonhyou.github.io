---
title: Hello World
tags: [test]
---
Welcome to Klein Log, a normal website.

歡迎來到一個普通的網站：克萊因記錄

<!--more-->

# Heading 1

## 二級標題

> 這是引用

|  It  |  is  |  a   |
| :--: | :--: | :--: |
|  T   |  A   |  B   |
|  L   |      |  E   |

$$
{
F_n=\frac{\phi^n - \psi^n}{\phi - \psi} = \frac{\phi^n - \psi^n}{\sqrt5}\\\\
\phi = \frac{1 + \sqrt5}2\\\\
\psi = \frac{1 - \sqrt5}2
}
$$

```c++
#include <cstdio>
#include <cctype>

const int MAXN = 10010;

int fa[MAXN], rank[MAXN];

inline int getInt() {
  int sum(0); char _c;
  while (!isdigit(_c = getchar()));
  do sum = sum * 10 + _c - '0';
  while (isdigit(_c = getchar()));
  return sum;
}

int getfa(int x) { return fa[x] == x ? x : fa[x] = getfa(fa[x]); }

inline bool querySet(int x, int y) { return getfa(x) == getfa(y); }

inline void mergeSet(int x, int y) {
  int fx = getfa(x), fy = getfa(y);
  if (rank[fx] > rank[fy]) ++rank[fx], fa[fy] = fa[fx];
  else ++rank[fy], fa[fx] = fa[fy];
}

int main() {
  int n = getInt(), m = getInt();
  for (int i = 1; i <= n; ++i) fa[i] = i;
  do {
    int z = getInt(), x = getInt(), y = getInt();
    if (z - 2) mergeSet(x, y);
    else puts(querySet(x, y) ? "Y" : "N");
  } while (--m);
}
```






