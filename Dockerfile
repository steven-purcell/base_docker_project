# syntax=docker/dockerfile:1
FROM python:3.7-alpine
WORKDIR /Code
COPY requirements.txt requirements.txt
COPY /Code/ /Code/
COPY /Data/ /Data/
COPY /Results/ /Results/
RUN pip install -r requirements.txt
EXPOSE 5000
COPY . .
# CMD ["flask", "run"]
CMD ["python", "main.py"]
