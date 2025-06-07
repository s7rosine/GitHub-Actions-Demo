FROM nginx:alpine

RUN useradd -m appuser

WORKDIR /usr/share/nginx/html
RUN rm -rf ./*
COPY ./frontend/ .

USER appuser

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]