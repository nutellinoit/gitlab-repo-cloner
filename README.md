# Gitlab repo clone

```bash
docker run --rm -it \
-e URL='https://git.example.tld' \
-e POSTFIX='/api/v3/' \
-e PRIVATE_TOKEN='XXXXXX' \
-v $PWD:/tmp/ nutellinoit/gitlab-repo-cloner
```