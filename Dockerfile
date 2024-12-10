#multistaging

FROM alpine

WORKDIR /app

RUN touch test.txt




FROM alpine as two

WORKDIR /app

COPY --from=0 /app/test.txt .

RUN echo "hello word" > test.txt

CMD ["cat","test.txt"]




FROM two

RUN echo "final" > test.txt

CMD ["cat","test.txt"]
