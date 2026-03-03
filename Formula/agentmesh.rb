class Agentmesh < Formula
  desc "Turn any AI coding assistant into a dispatchable, nudge-able agent"
  homepage "https://agentmeshhq.dev"
  url "https://registry.npmjs.org/@agentmeshhq/agent/-/agentmeshhq-agent-0.3.0.tgz"
  sha256 "c8d3eae160a892e32837db3dcae515e843e5383fef52b8141940c8bcf8b6d59f"
  license "MIT"

  depends_on "node"
  depends_on "tmux"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
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
