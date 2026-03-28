#!/bin/bash

# ホストからマウントした.sshをコピーしてパーミッションを修正
if [ -d "$HOME/.ssh-host" ]; then
    mkdir -p "$HOME/.ssh"
    sudo cp -r "$HOME/.ssh-host/." "$HOME/.ssh/"
    sudo chown -R "$USER":"$USER" "$HOME/.ssh"
    chmod 700 "$HOME/.ssh"
    find "$HOME/.ssh" -type f -exec chmod 600 {} \;
fi

# ホストからマウントしたClaude Code認証情報をコピーしてパーミッションを修正
if [ -d "$HOME/.claude-host" ]; then
    mkdir -p "$HOME/.claude"
    sudo cp -r "$HOME/.claude-host/." "$HOME/.claude/"
    sudo chown -R "$USER":"$USER" "$HOME/.claude"
fi

# ホストからマウントしたCodex認証情報をコピーしてパーミッションを修正
if [ -d "$HOME/.codex-host" ]; then
    mkdir -p "$HOME/.codex"
    sudo cp -r "$HOME/.codex-host/." "$HOME/.codex/"
    sudo chown -R "$USER":"$USER" "$HOME/.codex"
fi

exec "$@"
