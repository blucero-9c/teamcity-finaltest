FROM python:3.9-slim
WORKDIR /app
COPY webapp/app/webapp.py .
RUN pip install flask
ENV FLASK_APP=webapp.py
EXPOSE 5000
CMD ["python", "webapp.py"]
