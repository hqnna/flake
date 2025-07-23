{
  wsl = {
    enable = true;
    defaultUser = "hanna";
    useWindowsDriver = true;
    interop.register = true;
    startMenuLaunchers = true;
    wslConf.network.generateResolvConf = false;
  };
}
