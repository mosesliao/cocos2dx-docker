# Cocos2dx Android Docker
[![CircleCI](https://circleci.com/gh/liaogz82/cocos2dx-docker.svg?style=svg)](https://circleci.com/gh/liaogz82/cocos2dx-docker)
[![Docker Stars](https://img.shields.io/docker/stars/mosesliao/cocos2dx-docker.svg?style=plastic)](https://registry.hub.docker.com/v2/repositories/mosesliao/cocos2dx-docker/stars/count/) [![Docker pulls](https://img.shields.io/docker/pulls/mosesliao/cocos2dx-docker.svg?style=plastic)](https://registry.hub.docker.com/v2/repositories/mosesliao/cocos2dx-docker/)
[![Docker Automated build](https://img.shields.io/docker/automated/mosesliao/cocos2dx-docker.svg?maxAge=2592000?style=plastic)](https://github.com/mosesliao/cocos2dx-docker/)

## Getting started

This is the github repository for cocos2dx running in docker containers. Every folder you see is a certain variant of a cocos2dx setup. `<cocos2dx verson>-<android ndk version>`

There is a setup test included within the Dockerfile so it is reliable

The Dockerfile at the root is the bleeding edge docker, that contains the latest ubuntu, cocos2dx(3.17), android NDK(r17b) and SDK(26.1.1) versions. Android platform-tools and build-tools are not installed. Java remains as version 8 cause other later versions are problematic

https://stackoverflow.com/questions/46402772/failed-to-install-android-sdk-java-lang-noclassdeffounderror-javax-xml-bind-a

## Issues and Feedback

For any other issues and feedback about this docker image, or you need another different docker image with different versions of cocos2dx and NDK, please submit it to this repository.
