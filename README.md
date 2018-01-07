# githook

Compile your hugo site whenever you push to your GitHub Repo.

1. `chmod -R 777 pool` to be able to write to create new files in it
2. `chmod a+x githook.sh`
3. Edit `githook.php` to point to current directory. Use absolute paths.
4. Edit `githook.sh` to point to respective directories. Use absolute paths.
5. Put `githook.php` on the root of your website so you are able to call it via `https://yoursite.com/githook.php`
6. Add `githook.sh` to crontab to execute every minute or other frequency
