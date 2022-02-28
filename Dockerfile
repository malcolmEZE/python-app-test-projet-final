FROM python:latest
COPY . /python-app
WORKDIR /python-app
RUN pip install -r requirements.txt
RUN ["pytest-flask", "-v", "--junitxml=reports/result.xml"]
CMD tail -f /dev/null
