#syntax=harbor.leops.local/library/docker/dockerfile:1

FROM harbor.leops.local/common/runtime/yii:php-8.4 AS running

ARG APP_ENV=test \
    APP=undefine
ENV APP_ENV=$APP_ENV \
    YII_ENV=$APP_ENV \
    APP=$APP

COPY --chown=www-data:www-data . /app/${APP}
