FROM ubuntu:rolling

# dev tools and utils
RUN apt-get update && apt-get install -y curl zsh unzip git

# zsh config and preserved history
ENV SHELL=/bin/zsh
RUN curl -s https://ohmyposh.dev/install.sh | bash -s
COPY theme.json /theme.json
RUN echo 'eval "$(oh-my-posh init zsh --config /theme.json)"' >/root/.zshrc
CMD /bin/zsh
