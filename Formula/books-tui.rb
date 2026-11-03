class BooksTui < Formula
  desc "Browse, fuzzy-search, and open your PDF library from the terminal"
  homepage "https://github.com/Prakhil-tp/books-tui"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Prakhil-tp/books-tui/releases/download/v0.1.2/books-tui-aarch64-apple-darwin.tar.gz"
      sha256 "b0b284f3b09e232c1cddfaaef7a4f7ea2b652d039f908cd58440d571a4f1e600"
    end
    on_intel do
      url "https://github.com/Prakhil-tp/books-tui/releases/download/v0.1.2/books-tui-x86_64-apple-darwin.tar.gz"
      sha256 "22f8c4f12e07095417d23b5009a9dd00a32e4a23f9831b996f30cca973581dcf"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Prakhil-tp/books-tui/releases/download/v0.1.2/books-tui-aarch64-unknown-linux-musl.tar.gz"
      sha256 "3995425435d5e04031b4fb3c89aedde936e3bb5640da8a86bc325e8cb2ba9060"
    end
    on_intel do
      url "https://github.com/Prakhil-tp/books-tui/releases/download/v0.1.2/books-tui-x86_64-unknown-linux-musl.tar.gz"
      sha256 "98256722c89104ca26201c8db646f0a0bda8f22dcc8070f037d8cf8c33c21c46"
    end
  end

  depends_on "poppler" => :recommended

  def install
    bin.install "books-tui"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/books-tui --version")
  end
end
