# How to contribute

## Prerequisites

Same as in [README.md](./README.md#prerequisites) plus:

- [Node.js][n] 16+;
- [PNPM][p].

[n]: https://nodejs.org/
[p]: https://pnpm.io/

## Setup

1. [Fork][f] the repository.

   [f]: https://docs.github.com/en/get-started/quickstart/fork-a-repo

2. Clone forked repository:

   ```
   git clone https://github.com/YOUR_USERNAME/docker-openvpn-http-ssh-proxy
   cd docker-openvpn-http-ssh-proxy
   ```

3. Enable [Corepack][c]:

   [c]: https://nodejs.org/api/corepack.html

   ```
   corepack enable
   ```

4.Install dependencies:

```
pnpm i
```

## Development

### Lint

Run before committing changes:

```
pnpm lint
```
