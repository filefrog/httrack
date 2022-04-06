filefrog/httrack Docker Image
=============================

HTTrack is a neat utility for crawling personal websites, caching
copies of them for static reasons, etc.  Here it is, in a Docker
image, so you don't have to install it to use it!

(provided that you have Docker available...)

To run it:

    docker run --rm -it filefrog/httrack [options]

The simplest [option] is to specify the root URL of the site you
want HTTrack to crawl:

    docker run --rm -it filefrog/httrack https://jameshunt.us/

If you're trying to archive a copy of a site, you'll want the HTML
files that HTTrack creates as it traverses the site(s) you tell it
about.  That can be done with a volume mount:

    docker run --rm -it -v $PWD:/out \
      filefrog/httrack https://jameshunt.us ...

This docker image is built such that any commands you pass it are
interpreted as arguments to the base `httrack` command.  In that
sense, `docker run ... filefrog/httrack` can be thought of as an
alias for the actual `httrack` command, except you don't have to
install the software, or its dependencies.

[1]: https://www.httrack.com/
