#!/bin/bash
 
WEB_PATH='/usr/local/wwwroot/vue-blog'
WEB_USER='root'
WEB_USERGROUP='root'
 
echo "Start deployment"
cd $WEB_PATH
echo "pulling source code..."
git reset --hard origin/release
git clean -f
git pull
git checkout release
echo "changing permissions..."
chown -R $WEB_USER:$WEB_USERGROUP $WEB_PATH
echo "Finished."