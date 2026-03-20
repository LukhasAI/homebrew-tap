class Lukhas < Formula
  include Language::Python::Virtualenv

  desc "LUKHAS CLI — Command-line interface for the Constellation Framework"
  homepage "https://lukhas.ai"
  url "https://github.com/LukhasAI/Lukhas/archive/refs/tags/v0.9.1-syntax-zero.tar.gz"
  version "0.9.1"
  license "Proprietary"

  depends_on "python@3.11"

  # Core CLI dependencies
  resource "click" do
    url "https://files.pythonhosted.org/packages/source/c/click/click-8.1.8.tar.gz"
    sha256 "ed53c9d8a4567703ce9cefb4e13f0a379b1b0fff7c09d0e6ab3d61e0f29d6cfb"
  end

  resource "rich" do
    url "https://files.pythonhosted.org/packages/source/r/rich/rich-13.9.4.tar.gz"
    sha256 "439594978a49a09530cff7ebc4b5c7103ef57baf48d5ea3184f21d9a2befa098"
  end

  resource "httpx" do
    url "https://files.pythonhosted.org/packages/source/h/httpx/httpx-0.27.2.tar.gz"
    sha256 "f7c2be1d2f3c3d454ab0acc7d3a68b75d29430f808efa144f746e97db9ea8913"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "LUKHAS", shell_output("#{bin}/lukhas --help 2>&1")
  end
end
