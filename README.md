# OmniPaxos Playground

## Requirements
- [Docker Compose](https://docs.docker.com/compose/install/)

## Usage
Run and attach to the playground:
```bash
$ ./playground.sh attach
```
Stop the playground:
```bash
$ ./playground kill
```
Attach to servers
```bash
$ docker attach s1
```

## Playground commands
- Normal requests: `put <key> <value> [server]`, `get <key> [server]`, `delete <key> [server]`
- Batch of write requests: `batch <num_requests>`
- Partial connectivity scenarios: `scenario <chained | constrained | qloss>`
- Set connections: `connection <server1> <server2> <true | false>`
- Disconnect server from all other servers: `connection <server> false`
- Restore all connections: `scenario restore`
