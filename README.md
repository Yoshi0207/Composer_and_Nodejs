# Develop Acms Extension Image
Docker Image running Composer and Nodejs. Use this Image for continuous integration of a-blog cms extension development.

## Usage
Run the following command in your repository to create the docker container.
```
docker build -t <name of image> .
docker run -it -d --name <name of container> <name of image>
```

### Note
- User home directory is `/root`.

## Example
Create the docker container.
```
docker build -t acms .

docker run -it -d --name acms -v /foo/var/acms-extension:/root acms
```

After build completely finishes, enter in a Docker container to use npm and composer.
```
docker exec -i -t acms bash
cd root
npm install
composer install
```
