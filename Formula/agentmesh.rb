class Agentmesh < Formula
  desc "Turn any AI coding assistant into a dispatchable, nudge-able agent"
  homepage "https://agentmeshhq.dev"
  url "https://registry.npmjs.org/@agentmeshhq/agent/-/agent-0.1.11.tgz"
  sha256 "ac0eec5bad0e5fb4361d00a79d2594bf484933c839da134f72a9eb9270ad6d67"
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
