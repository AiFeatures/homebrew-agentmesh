# Homebrew Tap for AgentMesh

This is the official Homebrew tap for [AgentMesh](https://agentmeshhq.dev).

## Installation

```bash
brew tap agentmesh/agentmesh
brew install agentmesh
```

## Usage

```bash
# Initialize configuration
agentmesh init

# Start an agent
agentmesh start --name my-agent

# List running agents
agentmesh list

# Nudge an agent
agentmesh nudge my-agent "Check your inbox"

# Attach to agent session
agentmesh attach my-agent

# Stop an agent
agentmesh stop my-agent
```

## Requirements

- macOS or Linux
- tmux (installed automatically via Homebrew)
- Node.js 18+ (installed automatically via Homebrew)

## Links

- [Documentation](https://agentmeshhq.dev/docs)
- [GitHub](https://github.com/therajushahi/agentmesh)
- [Report Issues](https://github.com/therajushahi/agentmesh/issues)
