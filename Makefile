
default: down up test

down:
	docker compose down --remove-orphans || true
up:
	docker compose up -d

test:
	@sleep 1
	curl -ks https://localhost \
	| grep --color=always nginx
	#
	curl -ksL http://localhost \
	| grep --color=always nginx
