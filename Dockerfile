FROM alpine as builder

WORKDIR usr/src/app

COPY ./ ./


# engix Server
#FROM nginx

#COPY --from=builder /usr/src/app /usr/share/nginx/html


# Apache Server
FROM httpd:2.4

COPY --from=builder /usr/src/app/ /usr/local/apache2/htdocs/

