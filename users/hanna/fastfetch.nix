builtins.toJSON {
  display = {
    separator = " ";
  };
  logo = {
    color = {
      "1" = "#78a9ff";
      "2" = "#78a9ff";
    };
  };
  modules = [
    {
      type = "title";
      format = "{#34}╭ {#37}{user-name}{#34}@{#37}{host-name} {#34}──────────────────────────────╮";
    }
    {
      type = "os";
      key = "{#34}│ {#37}󰌽 {#34}Distro {#37}→";
      format = "{pretty-name}";
    }
    {
      type = "kernel";
      key = "{#34}│ {#37} {#34}Kernel {#37}→";
      format = "{release}";
    }
    {
      type = "packages";
      key = "{#34}│ {#37} {#34}Packages {#37}→";
      format = "{nix-system} (system), {nix-user} (user)";
    }
    {
      type = "wm";
      key = "{#34}│ {#37} {#34}Desktop {#37}→";
      format = "{pretty-name} ({protocol-name})";
    }
    {
      type = "terminal";
      key = "{#34}│ {#37}󰆍 {#34}Terminal {#37}→";
    }
    {
      type = "terminalfont";
      key = "{#34}│ {#37} {#34}Font {#37}→";
    }
    {
      type = "shell";
      key = "{#34}│ {#37} {#34}Shell {#37}→";
    }
    {
      type = "cpu";
      key = "{#34}│ {#37} {#34}CPU {#37}→";
      format = "{name}";
    }
    {
      type = "gpu";
      key = "{#34}│ {#37} {#34}GPU {#37}→";
      format = "{name}";
    }
    {
      type = "memory";
      key = "{#34}│ {#37} {#34}Memory {#37}→";
      format = "{used} / {total}";
    }
    {
      type = "disk";
      key = "{#34}│ {#37} {#34}Storage {#37}→";
      format = "{size-used} / {size-total}";
    }
    {
      type = "display";
      key = "{#34}│ {#37}󰍹 {#34}Display {#37}→";
      format = "{width}x{height} @ {refresh-rate} Hz";
    }
    {
      type = "localip";
      key = "{#34}│ {#37}󰖩 {#34}Address {#37}→";
      format = "{ipv4}";
    }
    {
      type = "uptime";
      key = "{#34}│ {#37} {#34}Uptime {#37}→";
    }
    {
      type = "custom";
      format = "{#34}╰─────────────────────────────────────────────╯";
    }
    {
      type = "colors";
      symbol = "circle";
      key = "               ";
    }
  ];
}
