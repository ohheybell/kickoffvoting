FROM python:3

WORKDIR /usr/src/app

COPY . .

RUN pip install virtualenv
RUN virtual .venv
RUN source .venv/bin/activate
RUN pip install --upgrade pip && \
    pip install --no-cache-dir -r requirements.txt



EXPOSE 5000

CMD ["python","dbsetup.py"]
CMD ["flask run"]

