include .env
export $(shell sed 's/=.*//' .env)

start:
	poetry run gunicorn --workers 4 --worker-class saleor.asgi.gunicorn_worker.UvicornWorker saleor.asgi:application
