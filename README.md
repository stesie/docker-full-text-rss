docker-full-text-rss
====================

Dockerfile for [FiveFilters' Full-Text-RSS](https://bitbucket.org/fivefilters/full-text-rss/src/master/),
a full-text fetcher for RSS feeds that provide partial content only.

It includes the latest version of [ftr-site-config](https://github.com/fivefilters/ftr-site-config).

The application/container is self-contained, it has no external dependencies like a database,
hence simply expose the http port.

You can mount a volume with custom site-config rules to
`/var/www/html/site_config/custom`.
