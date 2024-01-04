FROM python:3.11.7-alpine
ENV APP_PATH=/opt/app
RUN mkdir -p ${APP_PATH}
WORKDIR ${APP_PATH}
COPY ./ ${APP_PATH}
RUN pip install --no-cache-dir --upgrade -r requirements.txt
CMD ["uvicorn", "main:app","--reload","--host", "0.0.0.0", "--port", "8080"]