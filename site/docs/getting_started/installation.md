# 安裝 Deno

要使用 Deno，我們只需要安裝一個二進制的可執行檔即可，不必安裝其他額外的套件。

Deno 支援 maxOS、Linux、Windows 作業系統。對於 macOS，M1（arm64 架構）和 Intel（x64 架構）晶片兩者 Deno 都支援；但是對於 Linux 和 Windows 只支援 x64 系列架構。


## 下載和安裝

[deno\_install](https://github.com/denoland/deno\_install) 提供了方便的指令讓我們可以下載和安裝 Deno。

以下提供幾種方法來安裝 Deno。

使用 Shell 安裝（maxOS 和 Linux）：

```
curl -fsSL https://deno.land/x/install/install.sh | sh
```

使用 PowerShell 安裝（Windows）:

```
irm https://deno.land/install.ps1 | iex
```

使用 [Scoops](https://scoop.sh/)（Windows）安裝：

```
scoop install deno
```

使用 [Chocolatey](https://chocolatey.org/packages/deno)（Windows）安裝：

```
choco install deno
```

使用 [Homebrew](https://formulae.brew.sh/formula/deno)（macOS）安裝：

```
brew install deno
```

使用 [Nix](https://nixos.org/download.html)（macOS 和 Linux）安裝：

```
nix-shell -p deno
```

使用 [Cargo](https://crates.io/crates/deno) 編譯和安裝：

```
cargo install deno --locked
```

除了上述的方法之外，我們也可以手動安裝 Deno 二進制可執行檔：

1. 首先從 [github.com/denoland/deno/releases](http://github.com/denoland/deno/releases) 下載 zip 檔案，這些安裝包只包含一個可執行檔案。
2. <mark style="color:red;">You will have to set the executable bit on macOS and Linux</mark>.

## Docker

關於如何在 Docker 上使用 Deno 的資訊和指令可以看[官方的 Docker images](https://github.com/denoland/deno\_docker)

{% hint style="info" %}
Docker 為一種虛擬化技術，如果想要了解更多 Docker 的使用方式可以參考[《Docker —— 從入門到實踐](https://philipzheng.gitbook.io/docker\_practice/)[》](https://philipzheng.gitbook.io/docker\_practice/)
{% endhint %}

## 安裝後測試 <a href="#testing-your-installation" id="testing-your-installation"></a>

當我們安裝完 Deno 後可以輸入 `deno --version` 來測試是否有正確安裝，如果輸出結果顯示安裝的 Deno 版本即代表安裝成功。

另外，我們可以使用 `deno help` 指令來查看關於 Deno 引數和使用的說明文檔。

## 更新

要更新 Deno 版本，只需要輸入指令 `deno upgrade` ，這會下載位於 [github.com/denoland/deno/releases](http://github.com/denoland/deno/releases) 最新發布的 Deno 並取代本機上的舊版本。

另外，你也可以使用 `deno upgrade --version [版本號]` 來安裝特定版本的 Deno。\
例如：`deno upgrade --version 1.0.1`

## 從原始碼編譯 Deno 可執行檔

關於如何從原始碼來編譯的資訊可以在[貢獻](https://deno.land/manual@v1.30.3/references/contributing/building\_from\_source)章節中看到。
