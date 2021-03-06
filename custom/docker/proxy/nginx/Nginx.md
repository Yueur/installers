
Please note that an expty proxy_param.conf gives the same results...

NGINX Solution for Apache ProxyPassReverse [link](https://www.nginx.com/resources/wiki/start/topics/examples/likeapache/)

## Location bloc matching
[source](https://www.digitalocean.com/community/tutorials/understanding-nginx-server-and-location-block-selection-algorithms)

| Tag    | Description |
| :----- | :---------- |
| (none) | If no modifiers are present, the location is interpreted as a prefix match. This means that the location given will be matched against the beginning of the request URI to determine a match. |
| = | If an equal sign is used, this block will be considered a match if the request URI exactly matches the location given. |
| ~ | If a tilde modifier is present, this location will be interpreted as a case-sensitive regular expression match. |
| ~* | If a tilde and asterisk modifier is used, the location block will be interpreted as a case-insensitive regular expression match.
| ^~ | If a carat and tilde modifier is present, and if this block is selected as the best non-regular expression match, regular expression matching will not take place. |

