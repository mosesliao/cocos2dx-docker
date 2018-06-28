# Cocos2dx Android Docker

[![CircleCI][1]][2]
[![Docker Stars][3]][4]
[![Docker pulls][5]][6]
[![Docker Automated build][7]][8]

## Getting started

This is the github repository for cocos2dx running in docker containers. Every folder you see is a certain variant of a cocos2dx setup. `<cocos2dx verson>-<android ndk version>`

There is a setup test included within the Dockerfile so it is reliable

The Dockerfile at the root is the bleeding edge docker, that contains the latest ubuntu, cocos2dx(3.17), android NDK(r17b) and SDK(26.1.1) versions. Android platform-tools and build-tools are not installed. Java remains as version 8 cause other later versions are problematic

https://stackoverflow.com/questions/46402772/failed-to-install-android-sdk-java-lang-noclassdeffounderror-javax-xml-bind-a

## How to use

Download this image and run `sdkmanager <your needed libraries>`, after that run `cocos compile [YOUR OPTIONS]` to generate the android apk file.

## Nightly build

CircleCI will run a nightly build every first day of the month so as to ensure that the libraries are up to date.

## Issues and Feedback

For any other issues and feedback about this docker image, or you need another different docker image with different versions of cocos2dx and NDK, please submit it to this repository.

[1]: https://circleci.com/gh/liaogz82/cocos2dx-docker.svg?style=svg
[2]: https://circleci.com/gh/liaogz82/cocos2dx-docker
[3]: https://img.shields.io/docker/stars/mosesliao/cocos2dx-docker.svg?style=plastic
[4]: https://registry.hub.docker.com/v2/repositories/mosesliao/cocos2dx-docker/stars/count/
[5]: https://img.shields.io/docker/pulls/mosesliao/cocos2dx-docker.svg?style=plastic
[6]: https://registry.hub.docker.com/v2/repositories/mosesliao/cocos2dx-docker/
[7]: https://img.shields.io/docker/automated/mosesliao/cocos2dx-docker.svg?maxAge=2592000?style=plastic
[8]: https://github.com/mosesliao/cocos2dx-docker/
