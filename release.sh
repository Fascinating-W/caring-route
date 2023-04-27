#!/usr/bin/env sh
###
 # @Author: Wanko
 # @Date: 2023-02-16 18:41:13
 # @LastEditors: Wanko
 # @LastEditTime: 2023-04-27 18:31:24
 # @Description: 
### 
set -e

NODE_VERSION=$(node -p -e "require('./package.json').version")
echo "Current version is $NODE_VERSION"
echo "Enter release version: "
read VERSION
read -p "Releasing $VERSION - are you sure? (y/n)" -n 1 -r
echo  # (optional) move to a new line
if [[ $REPLY =~ ^[Yy]$ ]]
then
  echo "🕙 Releasing $VERSION ..."
  
  git ci "[build] $VERSION"
  npm version $VERSION --message "[release] $VERSION"
  
  cd src/caring-route
  npm version $VERSION --message "[release] $VERSION"
  cd ../../
  git push origin master
  cd src/caring-route
  npm publish
fi
echo "🎉 $VERSION version publish success"
