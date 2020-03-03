FROM python:3

COPY . /app

WORKDIR /app

#RUN pip install --upgrade pip
RUN pip install -r requirements.txt

EXPOSE 5000

#COPY dbsetup.py .
#CMD ["python", "dbsetup.py"]
#CMD ["export", "FLASK_ENV=development"]
#CMD ["flask", "run"]

ENTRYPOINT ["python"]
CMD ["dbsetup.py"]
CMD ["app.py"]

