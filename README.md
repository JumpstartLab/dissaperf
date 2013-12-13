# Performance Testing

This is a sample application used for learning performance testing.

## Setup

1. `git clone` this repository
2. `bundle install`

## Doing a benchmark

10 concurrent connections that will each run 100 requests:

```plain
ab -n 100 -c 10 http://0.0.0.0:9000/
```

## Test different servers

```bash
rackup -s webrick -p 9000
```

```bash
rackup -s thin -p 9000
```

```bash
rackup -s puma -p 9000
```

```bash
unicorn -p 9000
```

