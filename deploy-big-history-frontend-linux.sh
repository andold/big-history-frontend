#!/bin/bash
#
#
PROJECT=big-history-frontend
PROFILE=linux
HOME_DIR=/home/andold
INSTALL_SCRIPT_FILE_NAME=install-$PROJECT-$PROFILE.sh
DEPLOY_SCRIPT_FILE_NAME=deploy-$PROJECT-$PROFILE.sh
SOURCE_DIR=$HOME_DIR/src/github/$PROJECT
#DEPLOY_DIR=$HOME_DIR/deploy/apache2
DEPLOY_DIR=$(pwd)
#
#
# copy install script file
#
cp $SOURCE_DIR/$INSTALL_SCRIPT_FILE_NAME $DEPLOY_DIR
chmod a+x $DEPLOY_DIR/$INSTALL_SCRIPT_FILE_NAME
# 
# 
# copy build 
#
rm -fr $DEPLOY_DIR/doc_base/anonymous/bhistory/*
cp -fr $SOURCE_DIR/build/* $DEPLOY_DIR/doc_base/anonymous/bhistory/
#
#
# apache2 재시작
#
sudo apachectl restart
#
#
#
#
date
jps
sudo apachectl status
#