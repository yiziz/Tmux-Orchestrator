#!/bin/bash

# Configuration file for Tmux Orchestrator
# Source this file in other scripts to get consistent paths

# Base directories
export PROJECTS_DIR="${PROJECTS_DIR:-$HOME/code}"
export ORCHESTRATOR_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Default tmux session settings
export DEFAULT_SESSION_PREFIX="${DEFAULT_SESSION_PREFIX:-tmux-orc}"
export DEFAULT_TARGET_WINDOW="${DEFAULT_TARGET_WINDOW:-$DEFAULT_SESSION_PREFIX:0}"

# File paths
export NEXT_CHECK_NOTE="$ORCHESTRATOR_DIR/next_check_note.txt"
export REGISTRY_DIR="$ORCHESTRATOR_DIR/registry"
export LOGS_DIR="$REGISTRY_DIR/logs"

# Create required directories
mkdir -p "$LOGS_DIR"

# Utility functions
get_project_path() {
    local project_name="$1"
    echo "$PROJECTS_DIR/$project_name"
}

get_script_path() {
    local script_name="$1"
    echo "$ORCHESTRATOR_DIR/$script_name"
}