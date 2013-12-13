# Performance Testing

This is a sample application used for learning performance testing.

## Setup

1. `git clone` this repository
2. `bundle install`

## Run the application

It's useful to run the application using a number of different
servers, e.g. `WEBrick`, `thin`, `puma`, and `unicorn`.

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

## Doing a benchmark

10 concurrent connections that will each run 100 requests:

**GET request**

```plain
ab -n 100 -c 10 http://0.0.0.0:9000/
```

**POST request**

```plain
ab -n 10 -c 2 -p data/small.json -T 'application/json' http://0.0.0.0:9000/
```

You may want to generate the results to a CSV file, so that you can graph the results:

```plain
ab -n 100 -c 10 -e filename.csv http://0.0.0.0:9000/
```

If you'd like to use GNUplot, then generate tab-delimited files instead:

```plain
ab -n 100 -c 10 -g filename.dat http://0.0.0.0:9000/
```

