FROM docker/sandbox-templates:claude-code

USER root
RUN npm install -g @anthropic-ai/cluade-code@latest
USER agent

ENV PATH=/usr/local/share/npm-global/bin:$PATH

ENV DISABLE_AUTOUPDATER=1
