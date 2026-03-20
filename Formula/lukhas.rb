class Lukhas < Formula
  include Language::Python::Virtualenv

  desc "LUKHAS CLI — Command-line interface for the Constellation Framework"
  homepage "https://lukhas.ai"
  url "https://github.com/LukhasAI/homebrew-tap/releases/download/v0.9.1/lukhas-cli-0.9.1.tar.gz"
  sha256 "69dd97af2e3671fbfdeae5f8c24a9387d053675d6b5eadd391d54d2e97052aa5"
  version "0.9.1"
  license "Proprietary"

  depends_on "python@3.11"

  # Core CLI dependencies
  resource "click" do
    url "https://files.pythonhosted.org/packages/source/c/click/click-8.1.8.tar.gz"
    sha256 "ed53c9d8990d83c2a27deae68e4ee337473f6330c040a31d4225c9574d16096a"
  end

  resource "rich" do
    url "https://files.pythonhosted.org/packages/source/r/rich/rich-13.9.4.tar.gz"
    sha256 "439594978a49a09530cff7ebc4b5c7103ef57baf48d5ea3184f21d9a2befa098"
  end

  resource "httpx" do
    url "https://files.pythonhosted.org/packages/source/h/httpx/httpx-0.27.2.tar.gz"
    sha256 "f7c2be1d2f3c3c3160d441802406b206c2b76f5947b11115e6df10c6c65e66c2"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "LUKHAS", shell_output("#{bin}/lukhas --help 2>&1")
  end
end
