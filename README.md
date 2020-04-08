1. Visit https://account.red5pro.com/register
2. Register with Github. Choose trial for both the server and mobile SDK.
3. Download the latest red5 pro server zip and move it to `./red5pro-server-us.zip`

## TODO

- remove `LICENSE.KEY` and regenerate from env in `ENTRYPOINT` docker script;
  update instructions to copy into `.env`

## Ideas

- [This repo](https://github.com/mondain/sandbox/tree/master/redsupport339) demonstrates switching between multiple streams. This could simplify playback / make it more consistent by not requiring clients to switch between e.g. the professor and a student giving a presentation / asking a question.