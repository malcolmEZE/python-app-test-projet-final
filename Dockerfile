FROM python:3.7-alpine
COPY . /python-app
WORKDIR /python-app
RUN pip install -r requirements.txt
RUN ["pytest", "-v", "--junitxml=reports/result.xml"]
CMD tail -f /dev/null
