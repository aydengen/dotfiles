# ============================================================================
#                              ZSHRC CONFIGURATION
# ============================================================================
# 分层结构：
#   1. Powerlevel10k Instant Prompt (必须在最顶部)
#   2. Oh-My-Zsh 核心配置
#   3. 第三方工具 / 自动生成的配置
#   4. 个人自定义配置
# ============================================================================

# ============================================================================
# 1. POWERLEVEL10K INSTANT PROMPT (必须保持在最顶部)
# ============================================================================
# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# ============================================================================
# 2. OH-MY-ZSH 核心配置
# ============================================================================
# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Theme configuration
ZSH_THEME="powerlevel10k/powerlevel10k"

# Plugins
plugins=(
	git
	zsh-autosuggestions
	autojump
)

# Load Oh-My-Zsh
source $ZSH/oh-my-zsh.sh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# ============================================================================
# 3. 第三方工具 / 自动生成的配置
# ============================================================================

# --- Python ---
export PATH=/Users/ayden/Library/Python/3.11/bin:$PATH

# --- Autojump ---
[ -f /usr/local/etc/profile.d/autojump.sh ] && . /usr/local/etc/profile.d/autojump.sh

# --- NVM (Node Version Manager) ---
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

# --- Zsh Syntax Highlighting ---
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# --- FZF (Fuzzy Finder) ---
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
# 禁用 ** 的全局 glob 扩展，保留给 FZF
setopt NO_GLOB_ASSIGN

# --- pnpm ---
export PNPM_HOME="/Users/ayden/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac

# --- Bun ---
[ -s "/Users/ayden/.bun/_bun" ] && source "/Users/ayden/.bun/_bun"

# --- Conda ---
# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/ayden/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/ayden/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/ayden/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/ayden/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

# --- Deta Space ---
export PATH="/Users/ayden/.detaspace/bin:$PATH"

# --- Windsurf ---
export PATH="/Users/ayden/.codeium/windsurf/bin:$PATH"

# --- Antigravity ---
export PATH="/Users/ayden/.antigravity/antigravity/bin:$PATH"

# --- InShellisense ---
[ -f ~/.inshellisense/key-bindings.zsh ] && source ~/.inshellisense/key-bindings.zsh

# --- Kiro ---
[[ "$TERM_PROGRAM" == "kiro" ]] && . "$(kiro --locate-shell-integration-path zsh)"

# --- Local Bin Environment ---
. "$HOME/.local/bin/env"

# ============================================================================
# 4. 个人自定义配置
# ============================================================================

# --- 终端颜色配置 ---
export COLORTERM=truecolor

# --- 代理配置 ---
export https_proxy=http://127.0.0.1:8888
export http_proxy=http://127.0.0.1:8888
export all_proxy=socks5://127.0.0.1:8889

# --- 常用别名 ---
alias python=python3
alias config="vim ~/.zshrc"
alias reload="source ~/.zshrc"
alias vim="/opt/homebrew/bin/nvim"

# --- Claude Code / AI 相关配置 ---
alias cmt='opencode -m opencode/minimax-m2.1-free run "commit"'
alias olo='opencode -m opencode/minimax-m2.1-free run "你好"'

# Amp CLI
export PATH="/Users/ayden/.amp/bin:$PATH"
