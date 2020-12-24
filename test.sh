#!/bin/sh

git filter-branch --env-filter '

an="$GIT_AUTHOR_NAME"
am="$GIT_AUTHOR_EMAIL"
cn="$GIT_COMMITTER_NAME"
cm="$GIT_COMMITTER_EMAIL"

if [ "$GIT_COMMITTER_EMAIL" = "k.zhao-14@sms.ed.ac.uk" ]
then
    cn="kaylee4m"
    cm="nning9@yeah.net"
fi
if [ "$GIT_AUTHOR_EMAIL" = "k.zhao-14@sms.ed.ac.uk" ]
then
    an="kaylee4m"
    am="nning9@yeah.net"
fi

export GIT_AUTHOR_NAME="$an"
export GIT_AUTHOR_EMAIL="$am"
export GIT_COMMITTER_NAME="$cn"
export GIT_COMMITTER_EMAIL="$cm"
'