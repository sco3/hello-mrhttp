#!/usr/bin/env -S uv run 

import mrhttp

app = mrhttp.Application()

@app.route('/')
async def hello(r):
  return 'Hello World!'

app.run(cores=1, port=8000)
