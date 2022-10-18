#!/bin/bash

hugo
rm -rf ../jack-pan-ai.github.io/*
mv ./public/* ../jack-pan-ai.github.io/
rm -rf ./public
cd ../jack-pan-ai.github.io/
git add .
git commit -m "rebuilding site $(date)"
git push -u 
