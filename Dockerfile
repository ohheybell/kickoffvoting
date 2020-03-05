FROM python:latest
RUN mkdir -p /app
COPY ./static /app/static
COPY ./templates /app/templates
ADD ./dbsetup.py /app
ADD ./app.py /app
ADD ./requirements.txt /app
WORKDIR /app
RUN pip install -r requirements.txt
EXPOSE 5000
ENTRYPOINT ["python"]
CMD ["dbsetup.py"]
CMD ["app.py"]
