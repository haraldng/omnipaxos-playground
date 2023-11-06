![preview](preview.gif)

# OmniPaxos Playground
An interactive dashboard for [OmniPaxos](https://omnipaxos.com/). OmniPaxos is a Rust library used for building highly-available distributed systems. Users can input operations and simulate network failures to get a visualization of the behavior of OmniPaxos.

:tv: Check out the playground in action on [YouTube](https://youtu.be/Jq0M39MCnK4)!

## Requirements
- [Docker Compose](https://docs.docker.com/compose/install/)

## Usage
Run and attach to the playground:
```bash
$ ./playground.sh attach
```
(exit by pressing 'q' or 'esc')

Stop the playground:
```bash
$ ./playground kill
```
Attach to dashboard of individual servers (s1, s2, ... , s5)
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
