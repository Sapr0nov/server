#!/bin/bash

# # Проверка статуса MySQL сервера
# if ! service mysql status > /dev/null 2>&1; then
#     # Запуск MySQL сервера, если не запущен
#     service mysql start
# else
#     echo "MySQL сервер УЖЕ запущен."
# fi

# # Проверка статуса Apache сервера
# if pgrep apache2 > /dev/null
# then
#     echo "Apache сервер УЖЕ запущен."
# else
#     sudo /usr/sbin/apache2 -k start
# fi

# # # В этом скрипте запускается пустая команда, чтобы контейнер оставался активным
# # echo "Контейнер запущен. Для завершения работы запустите \"docker stop [container_id]\""
# # while true; do sleep 3600; done




#!/bin/bash
apachectl -D FOREGROUND