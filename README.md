# mbentley/cf-uaac

docker image for [cf-uaac]()
based off of ruby:3.4-alpine

To pull this image:
`docker pull mbentley/cf-uaac`

## Build

```bash
docker build \
  --build-arg CF_UAAC_VER="$(wget -q --header="Accept: application/vnd.github+json" --header="X-GitHub-Api-Version: 2022-11-28" -O - https://api.github.com/repos/cloudfoundry/cf-uaac/releases/latest | jq -r .tag_name)" \
  -t mbentley/cf-uaac \
  .
```

## Example Usage

```bash
$ docker run -it --rm mbentley/cf-uaac sh
/ # uaac version
UAA client 4.28.0
```
