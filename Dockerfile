FROM python:3.12-slim

WORKDIR /app

RUN apt-get update && apt-get install -y git
RUN pip install --upgrade pip setuptools
RUN pip install \
    mkdocs==1.6.1 \
    jinja2==3.1.6 \
    markupsafe==3.0.2 \
    mkdocs-minify-plugin==0.8.0 \
    git+https://github.com/squidfunk/mkdocs-material.git@9baaad9238290f27544de4909b0a01803f1111de \
    mkdocs-include-markdown-plugin==7.1.5 \
    markdown-include==0.8.1

EXPOSE 8000

CMD ["mkdocs", "serve", "--clean", "--dev-addr", "0.0.0.0:8000"]
