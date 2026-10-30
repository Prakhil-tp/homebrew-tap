class BooksTui < Formula
  desc "Browse, fuzzy-search, and open your PDF library from the terminal"
  homepage "https://github.com/Prakhil-tp/books-tui"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Prakhil-tp/books-tui/releases/download/v0.1.1/books-tui-aarch64-apple-darwin.tar.gz"
      sha256 "121332e487833c43e9807b2f477f6f4581a48e20a75215250e63dbc251bf26e6"
    end
    on_intel do
      url "https://github.com/Prakhil-tp/books-tui/releases/download/v0.1.1/books-tui-x86_64-apple-darwin.tar.gz"
      sha256 "f5478ab9dc6cc376ca0a30bf018296e16d73b50dd9047be865b6a44004477942"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Prakhil-tp/books-tui/releases/download/v0.1.1/books-tui-aarch64-unknown-linux-musl.tar.gz"
      sha256 "9c3557281efe20810d2576d34dd3aed6c8683b577d822b978cf7f57cca119b20"
    end
    on_intel do
      url "https://github.com/Prakhil-tp/books-tui/releases/download/v0.1.1/books-tui-x86_64-unknown-linux-musl.tar.gz"
      sha256 "9220e90be5459d566c2fb9837374fc7fd420fc28efcaa9814849e4493ce06ae9"
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
