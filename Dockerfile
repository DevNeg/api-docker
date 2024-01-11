FROM python:3.12.1
ENV PYTHONUNBUFFERED 1
WORKDIR /app
COPY requirements.txt ./
RUN pip install -r requirements.txt
COPY . ./
EXPOSE 800
CMD ["uvicorn", "main:app", "--reload"]
