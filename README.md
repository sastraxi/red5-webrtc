## Getting started

1. Visit https://account.red5pro.com/register
2. Register with Github. Choose trial for both the server and mobile SDK.
3. Download the latest red5 pro server zip and move it to `./red5pro-server-us.zip`
4. `./docker-build.sh`
5. `docker-compose up`
6. Visit http://localhost:5080/live/broadcast.jsp
7. Enter a stream name (e.g. `live`), then click start broadcast!

## Multiple inputs

[This repo](https://github.com/mondain/sandbox/tree/master/redsupport339) demonstrates switching between multiple streams. This could simplify playback / make it more consistent by not requiring clients to switch between e.g. the professor and a student giving a presentation / asking a question.

In this case, the "switching" logic is done via a Red5 server plugin. A `Station` object listens to events from different feeds, and only forwards one set of events to the output, thereby acting as a switch.

## TODO

- remove `LICENSE.KEY` and regenerate from env in `ENTRYPOINT` docker script;
  update instructions to copy into `.env`
