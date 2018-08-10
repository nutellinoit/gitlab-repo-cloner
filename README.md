# Gitlab repo clone

## Usage with docker

```bash
docker run --rm -it \
-e URL='https://git.example.tld' \
-e POSTFIX='/api/v4/' \
-e PRIVATE_TOKEN='XXXXXX' \
-e USERNAME='yourusername' \
-v $PWD:/tmp/ nutellinoit/gitlab-repo-cloner
```