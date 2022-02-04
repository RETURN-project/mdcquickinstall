# mdcquickinstall
[`makeDataCube`](https://github.com/RETURN-project/makeDataCube), with its many dependencies, is relativelly tricky to install.
Luckily we can use Docker and Singularity images, and store them on the cloud, to smooth the process.

Unfortunately, there is a step that nobody can perform for you: creating and storing your credentials.
Your personal credentials cannot and should not be available in an online image created by me.
This repository will help you easily create your own images, including your credentials.

## How to use this repo

1. Clone it to your working directory.
2. Copy your `.laads` file in your working directory.
3. Copy your `.boto` file in your working directory.
4. Copy your `.netrc` file in your working directory.

The next step depends of the type of image you want to create.
### Create a Docker image?
To create a Docker image containing both `makeDataCube` and your personal credentials, run:

```
docker image build -t <tag> .
```

where tag is just the identification name you want to give to your Docker image.

### Create a Singularity image?
To create a Singularity image containing both `makeDataCube` and your personal credentials, run:

```
singularity build <imagename>.sif singularity.def
```

where imagename is just the identification name you want to give to your Singularity image.