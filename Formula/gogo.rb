# typed: false
# frozen_string_literal: true

class Gogo < Formula
  desc "Streaming LLM CLI with multi-provider support"
  homepage "https://github.com/sirsjg/gogo"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/sirsjg/gogo/releases/download/v#{version}/gogo_#{version}_Darwin_arm64.tar.gz"
      # sha256 will be auto-populated by goreleaser
    end
    on_intel do
      url "https://github.com/sirsjg/gogo/releases/download/v#{version}/gogo_#{version}_Darwin_x86_64.tar.gz"
      # sha256 will be auto-populated by goreleaser
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sirsjg/gogo/releases/download/v#{version}/gogo_#{version}_Linux_arm64.tar.gz"
      # sha256 will be auto-populated by goreleaser
    end
    on_intel do
      url "https://github.com/sirsjg/gogo/releases/download/v#{version}/gogo_#{version}_Linux_x86_64.tar.gz"
      # sha256 will be auto-populated by goreleaser
    end
  end

  def install
    bin.install "gogo"
  end

  test do
    system "#{bin}/gogo", "-v"
  end
end