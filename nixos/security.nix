{ config, ... }: {

  security.sudo = {
    timestampTimeout = config.var.sudoTimeStamp;
  }; 

}
