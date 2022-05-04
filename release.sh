#!/bin/bash
git tag -d v1
git push --delete origin v1
git tag v1
git push origin --tags