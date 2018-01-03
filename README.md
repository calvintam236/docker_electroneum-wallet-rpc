# What is Electroneum-Wallet-RPC?

Electroneum-Wallet-RPC is the RPC interface for Electroneum wallet provided by [electroneum](https://github.com/electroneum/electroneum).

# How to use this image [X86_64 version]

Create shared volume:

```console
$ docker volume create --name electroneum-wallet-rpc
```

Run in background:

```console
$ docker run -v electroneum-wallet-rpc:/electroneum-wallet-rpc -d --name YOUR_CONTAINER_NAME -p YOUR_PORT:YOUR_PORT calvintam236/electroneum-wallet-rpc:x86_64 --daemon-address YOUR_DAEMON_HOST:YOUR_DAEMON_PORT --daemon-login YOUR_DAEMON_USERNAME:YOUR_DAEMON_PASSWORD --rpc-bind-port YOUR_PORT --rpc-bind-ip 0.0.0.0 --rpc-login YOUR_WALLET_USERNAME:YOUR_WALLET_PASSWORD --confirm-external-bind
```

Get `electroneum-wallet-rpc` options with:

```console
$ docker run --rm calvintam236/electroneum-wallet-rpc:x86_64
```

Fetch logs of a container:

```console
$ docker logs YOUR_CONTAINER_NAME
```
