### build
> yarn docker:build

### run
> yarn docker:run

### visit
> http://localhost:3000

### develop
> yarn setup && yarn start:dev

> http://localhost:1000

### note
```json5
"scripts": {
    "setup": "yarn --verbose",
    "build": "tsc -p tsconfig.json",
    "start:dev": "PORT=1000 ts-node-dev index.ts",
    "start:prod": "node dist/index.js",
    "docker:remove": "docker rm -f node-app",
    "docker:logs": "docker logs node-app -f",
    "docker:run": "docker run -d --env PORT=4000 --env-file ./.env -p 3000:4000 -v $(pwd):/app -v /app/node_modules -v /app/dist --name node-app node-app-image",
    "docker:build": "docker image rm node-app-image; docker build -t node-app-image .",
    "curl": "curl http://localhost:3000"
  }
```