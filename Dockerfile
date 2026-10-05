FROM node:22-slim

# 必要なツール（git, curlなど）をインストール
RUN apt-get update && apt-get install -y \
    git \
    curl \
    procps \
    && rm -rf /var/lib/apt/lists/*

# Claude Code をグローバルインストール
RUN npm install -g @anthropic-ai/claude-code

WORKDIR /workspace

CMD ["tail", "-f", "/dev/null"]

# docker build -t claude-code . 