# rathole
rathole server for common use

### server config example

```yml
version: '3.4'

services:
  server:
    image: antvue/rathole
    restart: always
    ports:
      - 80:80/udp
      - 443:443/udp
      - 7000:7000
    environment:
      CONFIG: |
        [server]
        bind_addr = "0.0.0.0:2333"
        default_token = "default_token_if_not_specify" 
        [server.services.my_nas_ssh]
        token = "use_a_secret_that_only_you_know"
        bind_addr = "0.0.0.0:5202"
```

### client config example

```yml
version: '3.4'

services:
  client:
    image: antvue/rathole
    restart: always
    environment:
      CONFIG: |
        [client]
        remote_addr = "myserver.com:2333"
        [client.services.my_nas_ssh]
        token = "use_a_secret_that_only_you_know"
        local_addr = "127.0.0.1:22"

```
