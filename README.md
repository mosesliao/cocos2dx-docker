# Cocos2dx Android Docker
[![CircleCI](https://circleci.com/gh/liaogz82/cocos2dx-docker.svg?style=svg)](https://circleci.com/gh/liaogz82/cocos2dx-docker)
[![Deploy to Docker Cloud](https://files.cloud.docker.com/images/deploy-to-dockercloud.svg)](https://cloud.docker.com/stack/deploy/)

## Getting started

This is the github repository for cocos2dx running in docker containers. Every folder you see is a certain variant of a cocos2dx setup. `<cocos2dx verson>-<android ndk version>`

There is a setup test included within the Dockerfile so it is reliable

The Dockerfile at the root is the bleeding edge docker, that contains the latest ubuntu, cocos2dx(3.17), android NDK(r17b) and SDK(26.1.1) versions. Android platform-tools and build-tools are not installed. Java remains as version 8 cause other later versions are problematic

https://stackoverflow.com/questions/46402772/failed-to-install-android-sdk-java-lang-noclassdeffounderror-javax-xml-bind-a

## Issues and Feedback

For any other issues and feedback about this docker image, or you need another different docker image with different versions of cocos2dx and NDK, please submit it to this repository.
