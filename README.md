# namu-react

A template for projects based on React

## Environment

- Node v16
- React v18

This project was bootstrapped with [Create React App](https://github.com/facebook/create-react-app).

Common settings are applied in this template project and the specification is [here](https://namu-finance.atlassian.net/l/cp/VdCumnRb).

Full dependencies are listed in `package.json` and additional packages may be added in child projects.

## Development Setup

```zsh
yarn install
```

### Start

Running on your local machine with

```zsh
yarn start
```

### Docker Run

> :warning: **Not recommended for now**

Running the app via Docker is also possible with

```zsh
docker build -f Dockerfile.dev -t app-name:app-version .
docker run --rm -it -p 3000:3000 app-name:app-version
```

### Test

```zsh
yarn test
```

### Build

```zsh
yarn build
```

## Deployment

Fix workflow parameters `.circleci/config.yml` in each child repository.

- registry: Name of an ECR
- cluster: Name of an ECS cluster
- service: Name of an ECS service
- task: Name of task definition

In addition, fix the branch name in each workflow filter. It specifies wrong branch on purpose to prevent CI for running workflows of this template project.

- develop1 -> develop
- release1 -> release
- main1 -> main

Do not forget to uncomment `post-steps` in workflows to notify Jira about deployments.
