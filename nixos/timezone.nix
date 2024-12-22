{ config, ... }: {
  time.timeZone = config.var.timeZone;
  i18n.defaultLocale = config.var.defaultLocale;
}
