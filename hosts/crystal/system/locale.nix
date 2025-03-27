{ config, lib, pkgs, ... }:

{
  i18n.defaultLocale = "en_US.UTF-8";
  time.hardwareClockInLocalTime = false;
  time.timeZone = "America/New_York";
}
