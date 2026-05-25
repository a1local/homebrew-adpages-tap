class Adpages < Formula
  desc "Local UTM, schema, and Google Ads copy helpers"
  homepage "https://a1local.com.au/extensions"

  url "https://registry.npmjs.org/@a1local/adpages-cli/-/adpages-cli-0.1.1.tgz"
  version "0.1.1"
  sha256 "788c294afb86f7bcefee40b99e0587ec4f76c9b0892c51add81b861fda9d6221"

  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink libexec/"bin/adpages"
  end

  test do
    assert_match "adpages", shell_output("#{bin}/adpages help")
  end
end
