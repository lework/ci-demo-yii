#syntax=harbor.leops.local/library/docker/dockerfile:1

FROM harbor.leops.local/common/runtime/yii:php-8.4 AS running

ARG APP_ENV=test \
    APP=undefine \
    GIT_BRANCH= \
    GIT_COMMIT_ID=

ENV APP_ENV=$APP_ENV \
    YII_ENV=$APP_ENV \
    APP=$APP \
    GIT_BRANCH=$GIT_BRANCH \
    GIT_COMMIT_ID=$GIT_COMMIT_ID

COPY --chown=www-data:www-data . /app/${APP}
