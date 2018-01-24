# KeRePo

Testing Kemal performance, see: https://github.com/kemalcr/kemal/issues/73

## Installation

```
shards build --release --no-debug
```

## Usage

```
for i in $(seq 1 $(nproc --all)); do
  ./bin/KeRePo &
done

wait
```

Then use `wrk` (Tested on Intel Celeron 2795U 1.4Ghz x2 8GB)

```
Running 10s test @ http://localhost:3000
  2 threads and 100 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    43.75us  216.71us  12.99ms   99.15%
    Req/Sec    27.93k     2.03k   30.18k    85.00%
  555732 requests in 10.02s, 59.36MB read
  Socket errors: connect 0, read 0, write 0, timeout 49
Requests/sec:  55484.50
Transfer/sec:      5.93MB
```

## Contributing

1. Fork it ( https://github.com/faustinoaq/KeRePo/fork )
2. Create your feature branch (git checkout -b my-new-feature)
3. Commit your changes (git commit -am 'Add some feature')
4. Push to the branch (git push origin my-new-feature)
5. Create a new Pull Request

## Contributors

- [faustinoaq](https://github.com/faustinoaq) Faustino Aguilar - creator, maintainer
