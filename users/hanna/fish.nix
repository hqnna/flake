{ inputs, config, pkgs, ... }:

let
  home = config.users.users.hanna.home;
  lsr = inputs.lsr.packages.${pkgs.system};
  claude = config.age.secrets.claude;
in
pkgs.writeText "config.fish" ''
  set -U win /mnt/c/Users/Hanna
  set -Ux COLORTERM truecolor
  set -U fish_greeting
  set -Ux EDITOR hx

  set -Ux XDG_DATA_HOME ${home}/.local/share
  set -Ux XDG_STATE_HOME ${home}/.local/state
  set -Ux XDG_CONFIG_HOME ${home}/.config
  set -Ux XDG_CACHE_HOME ${home}/.cache

  set -Ux ANTHROPIC_API_KEY (cat ${claude.path or "/dev/null"})
  set -Ux NPM_CONFIG_USERCONFIG $XDG_CONFIG_HOME/npm/npmrc
  set -Ux NODE_REPL_HISTORY $XDG_STATE_HOME/node_history
  set -Ux SQLITE_HISTORY $XDG_STATE_HOME/sqlite_history
  set -Ux LESSHISTFILE $XDG_STATE_HOME/less_history
  set -Ux CUDA_CACHE_PATH $XDG_CACHE_HOME/cuda
  set -Ux RUSTUP_HOME $XDG_DATA_HOME/rustup
  set -Ux CARGO_HOME $XDG_DATA_HOME/cargo
  set -Ux GNUPGHOME $XDG_DATA_HOME/gnupg
  set -Ux GOPATH $XDG_DATA_HOME/golang

  set -u fish_color_search_match --background=484848
  set -u fish_color_selection --background=484848
  set -u fish_color_autosuggestion 484848
  set -u fish_color_redirection be95ff
  set -u fish_color_operator f2f4f8
  set -u fish_color_comment 484848
  set -u fish_color_command 78a9ff
  set -u fish_color_keyword be95ff
  set -u fish_color_normal f2f4f8
  set -u fish_color_escape 25be6a
  set -u fish_color_param f2f4f8
  set -u fish_color_quote 25be6a
  set -u fish_color_error ee5396
  set -u fish_color_end be95ff

  # Setup display socket symlinks manually for some reason
  ln -sf /mnt/wslg/runtime-dir/wayland-0 /run/user/(id -u)/wayland-0 &>/dev/null
  ln -sf /mnt/wslg/distro/tmp/.X11-unix /tmp/.X11-unix/ &>/dev/null

  if status is-interactive
      # Add binary directories to path
      fish_add_path -g $HOME/.local/bin

      # Setup other programs I use
      starship init fish | source
      direnv hook fish | source

      # Setup fish shell aliases
      alias cat "${pkgs.bat}/bin/bat"
      alias ls "${lsr.default}/bin/lsr --hyperlinks=never"

      # Git specific shell aliases
      alias gri 'git rebase --interactive'
      alias gcr 'git clone --recursive'
      alias gcs 'git clone --depth=1'
      alias gpa 'git push --atomic'
      alias gco 'git commit'
      alias grt 'git remote'
      alias grb 'git rebase'
      alias grs 'git reset'
      alias gcl 'git clone'
      alias gst 'git stash'
      alias gpu 'git push'
      alias gpl 'git pull'
      alias gad 'git add'
      alias gtg 'git tag'
  end
''
