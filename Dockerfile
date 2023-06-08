FROM kong:3.3.0


COPY kong.yml /etc/kong/

ENV KONG_DATABASE=off
ENV KONG_DECLARATIVE_CONFIG=/etc/kong/kong.yml

EXPOSE 8000

CMD ["kong", "start"]
