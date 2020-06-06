NAME = lacti/jekyll-aws

all: build push

build:
	docker build -t $(NAME) .

push:
	docker push $(NAME)

