FROM docker/sandbox-templates:claude-code

USER root
RUN npm install -g @anthropic-ai/claude-code@latest
USER agent

# Upstream's pinned native build at ~/.local/bin/claude shadows the npm install; win on PATH.
ENV PATH=/usr/local/share/npm-global/bin:$PATH

# npm prefix is root-owned; agent can't write it, so the in-session updater would fail. Version is managed by rebuild.
ENV DISABLE_AUTOUPDATER=1
