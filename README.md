# Gitlab repo clone

```bash
docker run --rm -it \
-e URL='https://git.example.tld' \
-e POSTFIX='/api/v4/' \
-e PRIVATE_TOKEN='XXXXXX' \
-e USERNAME='sam' \
-v $PWD:/tmp/ nutellinoit/gitlab-repo-cloner
```