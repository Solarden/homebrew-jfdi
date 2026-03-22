# Homebrew Formula for JFDI - Just Fucking Do It
#
# To use this formula, create a Homebrew Tap repo:
#   1. Create a GitHub repo named "homebrew-jfdi" under your account
#   2. Copy this file into that repo at Formula/jfdi.rb
#   3. Users can then install with:
#        brew tap Solarden/jfdi
#        brew install jfdi
#
# Once published to PyPI, update the `url` to point to the PyPI sdist
# and update the `sha256` accordingly.

class Jfdi < Formula
  include Language::Python::Virtualenv

  desc "CLI fitness tracker that pushes you to hit daily exercise goals with Shia LaBeouf energy"
  homepage "https://github.com/Solarden/just-fucking-do-it"
  url "https://github.com/Solarden/just-fucking-do-it/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "b76d8e011bfaf47eda573f1bc9d19c62a707f0e23e2e8e131a6972bbc4c3324f"
  license "MIT"

  depends_on "python@3.13"

  resource "typer" do
    url "https://files.pythonhosted.org/packages/source/t/typer/typer-0.24.1.tar.gz"
    sha256 "e39b4732d65fbdcde189ae76cf7cd48aeae72919dea1fdfc16593be016256b45"
  end

  resource "rich" do
    url "https://files.pythonhosted.org/packages/source/r/rich/rich-14.3.3.tar.gz"
    sha256 "b8daa0b9e4eef54dd8cf7c86c03713f53241884e814f4e2f5fb342fe520f639b"
  end

  resource "click" do
    url "https://files.pythonhosted.org/packages/source/c/click/click-8.3.1.tar.gz"
    sha256 "12ff4785d337a1bb490bb7e9c2b1ee5da3112e94a8622f26a6c77f5d2fc6842a"
  end

  resource "shellingham" do
    url "https://files.pythonhosted.org/packages/source/s/shellingham/shellingham-1.5.4.tar.gz"
    sha256 "8dbca0739d487e5bd35ab3ca4b36e11c4078f3a234bfce294b0a0291363404de"
  end

  resource "markdown-it-py" do
    url "https://files.pythonhosted.org/packages/source/m/markdown-it-py/markdown_it_py-4.0.0.tar.gz"
    sha256 "cb0a2b4aa34f932c007117b194e945bd74e0ec24133ceb5bac59009cda1cb9f3"
  end

  resource "mdurl" do
    url "https://files.pythonhosted.org/packages/source/m/mdurl/mdurl-0.1.2.tar.gz"
    sha256 "bb413d29f5eea38f31dd4754dd7377d4465116fb207585f97bf925588687c1ba"
  end

  resource "pygments" do
    url "https://files.pythonhosted.org/packages/source/p/pygments/pygments-2.19.2.tar.gz"
    sha256 "636cb2477cec7f8952536970bc533bc43743542f70392ae026374600add5b887"
  end

  resource "annotated-doc" do
    url "https://files.pythonhosted.org/packages/source/a/annotated-doc/annotated_doc-0.0.4.tar.gz"
    sha256 "fbcda96e87e9c92ad167c2e53839e57503ecfda18804ea28102353485033faa4"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "JFDI", shell_output("#{bin}/jfdi --help")
  end
end
