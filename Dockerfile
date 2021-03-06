FROM ruby:2.3-alpine

RUN apk add --update --no-cache git imagemagick-dev sqlite-dev make gcc musl-dev linux-headers && \
	mkdir -p /var/www && \
	git clone https://github.com/fono09/uploader /var/www/uploader && \
	mkdir -p /var/www/uploader/run && mkdir -p /var/www/uploader/log && \
	cd /var/www/uploader && bundle

WORKDIR /var/www/uploader

CMD ["unicorn", "-c", "unicorn.rb"]
