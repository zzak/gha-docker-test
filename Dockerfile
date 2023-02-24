FROM 'ruby:latest'

WORKDIR /app

COPY src .

RUN gem install webrick

CMD ["ruby", "-run", "-ehttpd", ".", "-p3000"]
