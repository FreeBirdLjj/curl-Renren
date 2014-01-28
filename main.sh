#!/bin/bash - 
#===============================================================================
#
#          FILE: main.sh
# 
#         USAGE: ./main.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Junjie LU 
#  ORGANIZATION: 
#       CREATED: 09/01/2013 15:35
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error
echo "Please input the email you register to Renren:"
read email
echo "Please input your Renren password(without echo):"
read -s password
curl -c cookie -d "email=${email}&password=${password}" http://www.renren.com/PLogin.do
curl -L -b cookie http://www.renren.com/home

