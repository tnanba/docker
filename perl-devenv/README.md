# perl-devenv

Docker image for perl development.

To develop with host's directory, you have to mount host's directory to `/home/perl/src` in container.

```bash
$ docker container run -ti --rm -v $HOME/src:/home/perl/src tnanba/perl-devenv:5.24.1
```

When container launched, user `perl@container`'s uid/gid is adjusted to mounted directory's uid/gid.
