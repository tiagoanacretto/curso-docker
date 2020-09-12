# Criar imagem: docker image build -t ex-build-copy .
# Rodar: docker run -p 80:80 ex-build-copy

FROM nginx:latest
LABEL maintainer 'Aluno Cod3r <aluno at cod3r.com.br>'

RUN echo '<h1>Sem conteúdo</h1>' > /usr/share/nginx/html/conteudo.html
COPY *.html /usr/share/nginx/html/