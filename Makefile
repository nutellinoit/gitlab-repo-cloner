build:
	docker build -t nutellinoit/gitlab-repo-cloner:latest .
push:
	docker push nutellinoit/gitlab-repo-cloner:latest