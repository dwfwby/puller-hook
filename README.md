1. Push puller-hook.sh to your server. For example, next to the directory
2. Exec `perl -pi.bak -e 's/\r$//' puller-hook.sh` in cmd your server
3. Create service with autostart script. Write `sudo systemctl edit --force --full puller-timer.service`
4. Write content from file puller-timer.server
5. Enable script using `sudo systemctl enable puller-timer`
