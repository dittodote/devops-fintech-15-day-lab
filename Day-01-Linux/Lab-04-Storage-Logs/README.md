# Lab 4 - Linux Storage and Logs

## Objective

Learn how to check disk space, memory, storage devices
and Linux system logs.

## Commands Learned

df -h
du -sh
free -h
lsblk
ls
tail
head
grep
journalctl

## Important Concepts

df -h:
Shows filesystem disk usage.

du -sh:
Shows directory/file size.

free -h:
Shows memory usage.

lsblk:
Shows disks and partitions.

journalctl:
Displays systemd journal logs.

tail:
Shows the end of a file.

head:
Shows the beginning of a file.

grep:
Searches text.

## Troubleshooting Flow

Application problem
        ↓
Check disk
        ↓
df -h
        ↓
Check memory
        ↓
free -h
        ↓
Check logs
        ↓
journalctl
        ↓
Search errors
        ↓
grep
