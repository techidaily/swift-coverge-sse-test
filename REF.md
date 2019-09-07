# curl

## curl 接收 EventSource

```bash
$ curl -N http://127.0.0.1/path/to/clock.php
```

```bash
# HTTP2
$ curl -N --http2 -H "Accept:text/event-stream" https://some.address.com/clocktimes
```

```bash
# Use Cookies
# See: https://stackoverflow.com/questions/31238626/curl-structuring-request-to-validate-server-sent-events

$ curl -N --cookie cookies.txt http://127.0.0.1/path/to/clock.php
```

