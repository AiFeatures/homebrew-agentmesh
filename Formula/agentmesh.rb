class Agentmesh < Formula
  desc "Turn any AI coding assistant into a dispatchable, nudge-able agent"
  homepage "https://agentmeshhq.dev"
  # Once published to npm, update this URL
  # url "https://registry.npmjs.org/@agentmesh/agent/-/agent-0.1.0.tgz"
  # For now, use GitHub release
  url "https://github.com/therajushahi/agentmesh/archive/refs/tags/agent-v0.1.0.tar.gz"
  sha256 "PLACEHOLDER_SHA256"
  license "MIT"

  depends_on "node"
  depends_on "tmux"

  def install
    cd "packages/agent" do
      system "npm", "install", *std_npm_args
      bin.install_symlink Dir["#{libexec}/bin/*"]
    end
  end

  def caveats
    <<~EOS
      To get started, run:
        agentmesh init

      This will prompt you for your API key from https://agentmeshhq.dev
    EOS
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agentmesh --version")
  end
end
