FROM alpine
LABEL tuncay=test
RUN apk add pingu curl nginx 
COPY ./docker-entrypoint.sh /
RUN chmod +x docker-entryypoint.sh
ENTRYPOINT ["/docker-entrypoint.sh"]
CMD ["postgres"]
