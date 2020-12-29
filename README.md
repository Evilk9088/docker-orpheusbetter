# docker-orpheusbetter
Docker image for [ApexWeed/orpheusbetter-crawler](https://github.com/ApexWeed/orpheusbetter-crawler/)

-----------------------------------------------------------------------

## docker run
```
docker run --rm -v <config/folder>:/config -v <torrents/data/folder>:/data -v <.torrent/file/watch/folder>:/torrent kacaukacau/orpheusbetter
```
Add additional options (eg. `-j 2` or `https://orpheus.network/torrents.php?id=1000\&torrentid=1000000`) after the above line if needed

Note: the config files will be in `/config/.orpheusbetter` and because it's a hidden folder, `ls` will not show it without `-a` option. Be careful not to delete it, or else you'll have to start all over again.
