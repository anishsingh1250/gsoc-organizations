.PHONY: api

api:
	yarn install && \
	npx redoc-cli bundle api/openapi.yml && \
	rm -rf api-dist && \
	mkdir api-dist && \
	cp redoc-static.html api-dist/index.html && \
	rm redoc-static.html