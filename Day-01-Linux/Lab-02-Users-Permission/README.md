# Lab 2 - Linux Users, Groups and Permissions

## Objective

Practice Linux users, groups, ownership and permissions.

## Commands Used

whoami
id
groupadd
useradd
passwd
usermod
mkdir
touch
chown
chmod
ls -l

## Important Concepts

r = read
w = write
x = execute

Permission structure:

owner | group | others

## Permission Example

640 means:

Owner: read and write
Group: read
Others: no permission

## Troubleshooting

Permission denied means the current user does not have
sufficient permission to access the file or directory.

## Result

Created the devops group, created devuser and testuser,
changed file ownership, tested permissions, created a
permission error, and fixed it.

