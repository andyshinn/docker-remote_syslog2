# remote_syslog2

A Docker [remote_syslog2][remote_syslog2] image. Built from [progrium/busybox][progrium_busybox] so that it is very small.

## Usage

A typical way to run this would be to mount your logs folder inside the container and pass the files on the command line. Assuming you had containers logging files to the host at `$PWD/logs`:

```
docker run -d -v $PWD/logs:/mnt andyshinn/remote_syslog2 -d logs.papertrailapp.com -p 54545 /mnt/*.log
```

[remote_syslog2]: https://github.com/papertrail/remote_syslog2
[progrium_busybox]: https://github.com/progrium/busybox
