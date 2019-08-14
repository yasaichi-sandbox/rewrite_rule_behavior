# Result
## `ProxyPreserveHost` is disabled
```
$ curl -v localhost/foo/bar
*   Trying ::1...
* TCP_NODELAY set
* Connected to localhost (::1) port 80 (#0)
> GET /foo/bar HTTP/1.1
> Host: localhost
> User-Agent: curl/7.54.0
> Accept: */*
>
< HTTP/1.1 200 OK
< Date: Thu, 15 Aug 2019 01:13:57 GMT
< Server: WEBrick/1.4.2 (Ruby/2.6.3/2019-04-16)
< Content-Length: 185
<
GET /bar HTTP/1.1
Host: backend:8080
User-Agent: curl/7.54.0
Accept: */*
X-Forwarded-For: 172.19.0.1
X-Forwarded-Host: localhost
X-Forwarded-Server: localhost
Connection: close
* Connection #0 to host localhost left intact
```

## `ProxyPreserveHost` is enabled
```
$ curl -v localhost/foo/bar
*   Trying ::1...
* TCP_NODELAY set
* Connected to localhost (::1) port 80 (#0)
> GET /foo/bar HTTP/1.1
> Host: localhost
> User-Agent: curl/7.54.0
> Accept: */*
>
< HTTP/1.1 200 OK
< Date: Thu, 15 Aug 2019 01:14:32 GMT
< Server: WEBrick/1.4.2 (Ruby/2.6.3/2019-04-16)
< Content-Length: 182
<
GET /bar HTTP/1.1
Host: localhost
User-Agent: curl/7.54.0
Accept: */*
X-Forwarded-For: 172.19.0.1
X-Forwarded-Host: localhost
X-Forwarded-Server: localhost
Connection: close
* Connection #0 to host localhost left intact
```
