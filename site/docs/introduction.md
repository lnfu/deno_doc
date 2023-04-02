# 簡介

Deno 是基於 V8、Rust、Tokio 的 JavaScript、TypeScript、WebAssembly 執行環境（runtime）。

Deno 擁有多種安全預設值以及良好的開發者體驗。

## 特色

* 提供 [Web 平台 API](https://deno.land/manual@v1.30.3/runtime/web\_platform\_apis) 以及採用了 Web 平台標準。例如使用 ES modules、web workers，支援 `fetch()`。
* 預設具安全性。除非明確啟用，否則無法存取檔案、網路或環境變數。
* 提供了可以立刻執行 [TypeScript](https://deno.land/manual@v1.30.3/advanced/typescript) 程式碼的環境。
* 僅需安裝單一可執行檔 `deno` 即可使用。
* 提供內建[開發工具](https://deno.land/manual@v1.30.3/tools)，例如程式碼排版工具（formatter）[`deno fmt`](https://deno.land/manual@v1.30.3/tools/formatter)、檢查工具（linter） [`deno lint`](https://deno.land/manual@v1.30.3/tools/linter)、測試工具（test runner）[`deno test`](https://deno.land/manual@v1.30.3/basics/testing) 以及多種編輯器的[語言伺服器（language server）](https://deno.land/manual@v1.30.3/getting\_started/setup\_your\_environment.md#using-an-editoride)。
* 擁有一套通過審查的標準[模組（modules）](https://deno.land/std@0.177.0)，確保能在 Deno 使用。
* 可以將腳本（scripts）[綁定（bundle）](https://deno.land/manual@v1.30.3/tools/bundler)至單一 JavaScript 文件或[可執行檔](https://deno.land/manual@v1.30.3/tools/compiler)。
* 支援使用[現有的 npm 模組](https://deno.land/manual@v1.30.3/node)。


## 設計哲學

Deno 旨在提供現代程式設計師高效率、具安全性的腳本環境。

Deno 始終會以單一可執行檔發布。給定一個 Deno 程式的網址，只需使用 [約 31MB 的壓縮執行檔](https://github.com/denoland/deno/releases) 即可執行。Deno 明確地承擔執行環境與套件包（package）管理的角色。它使用標準的瀏覽器兼容協定（browser-compatible protocol）載入模組 —— URLs。

除此之外，Deno 是過去使用 Bash 或 Python 所撰寫出腳本的良好替代品。


## 目標

* 以單一可執行檔 `deno` 發布。
* 提供具安全性的預設設定。
  * 除非特別允許，腳本無法存取檔案、網路或環境變數。
* 與瀏覽器兼容。
  * 我們可以單純使用 JavaScript 撰寫出 Deno 程式，而不使用到 `deno` 命名空間（namespace）或功能（feature）測試，如此一來程式能夠直接在現代的 Web 瀏覽器中執行，無須更改。
* 提供內建工具以改善開發者體驗。
  * 例如單元測試（unit testing）、程式碼排版工具與檢查（linting）工具。
* 讓 V8 的相關概念遠離使用者。 <mark style="color:red;">Why???</mark>
* 有效率地提供 HTTP 服務。


## 其他重要特性

* 在第一次執行時抓取並暫存程式碼，並在帶有 `--reload` 引數的指令執行之前，永不更新。（所以，它能夠在飛機上運作。）
* 從遠端 URLs 載入的模組與檔案應為不可變且可暫存。


## 譯者補充
### Deno 緣起
Deno 是 Node.js 作者 Ryan Dahl 在 "10 Things I Regret About Node.js" 演講後所發布的專案，目的是要取代 Node.js。

Deno（和 Node.js）主要用途：

1. JavaScript
2. 伺服器端程式
3. 提供多種 JavaScript API

### Deno 使用到的技術
* Rust：程式語言
* WebAssembly：程式語言
* JavaScript：程式語言
* TypeScript：程式語言，可以看成是加上型別（type）的 JavaScript
* V8：JavaScript 引擎，用來編譯執行 JavaScript 程式
* Tokio：Rust 框架

### 什麼是安全預設值？
舉例來說，如果我們的程式需要對檔案做寫入，那麼我們就必須在 runtime 時加上 --allow-write 引數。更多引數和說明後面章節會詳細介紹。