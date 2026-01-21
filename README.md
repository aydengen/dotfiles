# Dotfiles

我的 macOS 配置文件备份，使用 [Mackup](https://github.com/lra/mackup) 进行管理和同步。

## 包含的配置

- **Zsh** - Shell 配置 (`.zshrc`, `.zshenv`, `.zprofile`)
- **Git** - Git 全局配置 (`.gitconfig`, `.config/git/`)
- **Vim** - Vim 编辑器配置
- **VS Code** - Visual Studio Code 设置

## 安装

### 1. 安装 Mackup

```bash
brew install mackup
```

### 2. 克隆仓库

```bash
git clone https://github.com/aydengen/dotfiles.git ~/dotfiles
```

### 3. 配置 Mackup

将配置文件链接到主目录：

```bash
ln -s ~/dotfiles/.mackup.cfg ~/.mackup.cfg
```

### 4. 恢复配置

```bash
mackup restore
# 此命令会创建符号链接，将 Mackup/ 中的配置链接到系统对应位置
```

## 常用命令

```bash
mackup backup     # 备份配置文件到 dotfiles
mackup restore    # 从 dotfiles 恢复配置
mackup uninstall  # 移除符号链接，还原为普通文件
mackup list       # 查看支持的应用列表
```

## 许可证

MIT
