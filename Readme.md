## Unbound DNS Server in Docker

Build container
```shell
./build.sh
```

Run container
```shell
./run.sh
```

Query
```shell
dig +short @localhost -p 5335 google.com
```