FROM ohheybelldockerrepo:latestohheybellimage
  
COPY . /kickoffvotingrepo

RUN virtualenv .venv
RUN source .venv/bin/activate
RUN pip install flask
RUN pip install pusher
RUN pip install simple json

CMD python3 dbsetup.py
CMD flask run

