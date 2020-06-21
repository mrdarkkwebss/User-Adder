#!/bin/bash
ROOT=0
if [[ ${UID} != ${ROOT} ]]
then echo 'You are not root please run the program with sudo'
exit 1
else
read -p "Enter you're username: " USER_NAME
read -p "Enter you're name: " NAME
read -p "Enter you're password: " PASSWORD
useradd -c "${USER_NAME}" -m ${NAME}
(echo ${PASSWORD}; echo ${PASSWORD}) | passwd ${NAME}
fi
STATUS=0
if [[ ${?} != ${STATUS} ]]
then echo 'the script has encountered issues'
else
echo 'the script has run without issues'
echo ${?}
fi
echo Username: ${USER_NAME}
echo Name: ${NAME}
echo Password: ${PASSWORD}
