# Принцип решения

## Настройка unit-файла сервиса

Добавил в unit-файл сервиса строку ```ExecStartPre=!!/*``` с путем до скрипта driver-create-start-log.sh, который будет создавать (или пересоздавать) log-файл. В этом файле хранится всего одна строка с датой и временем запуска сервиса (```systemctl start driver*.service```).

## Скрипт для анализа логов

Реализовал скрипт analyze-service-log.sh, который выводит даты запуска служб. Наименование службы пользователь вводит сам. Можно добавить выбор количества вводимых служб и ввод пути до директории с log-файлами.

## Пример вывода:
```
Enter the first service name: driver9101
Enter the second service name: driver9102
Service: driver9101, Start Date: 2024-07-05 07:58:46
Service: driver9102, Start Date: 2024-07-05 07:59:32
```

# Описание файлов

- analyze-service-log.sh    - скрипт, который анализирует файлы логов и выводит наименование и время запуска службы;

- driver-create-start-log.sh - скрипт, который создает файл логов с временем запуска службы, на вход принимает наименование службы;

- driver9101-start-date.log  - log-файл службы driver9101.service с датой запуска службы;

- driver9101.service         - unit-файл службы с утилитой netcat и портом 9101

- driver9102-start-date.log  - log-файл службы driver9102.service с датой запуска службы;

- driver9102.service         - unit-файл службы с утилитой netcat и портом 9102
