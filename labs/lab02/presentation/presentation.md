---
lang: ru-RU
title: "Администрирование сетевых подсистем"
subtitle: "Лабораторная работа №2 — Настройка и анализ работы DNS-сервера"
author: "Талебу Тенке Франк Устон"
institute: "Российский университет дружбы народов, Москва, Россия"
theme: metropolis
aspectratio: 169
section-titles: true
toc: false
slide_level: 2
header-includes:
  - \metroset{progressbar=frametitle,sectionpage=progressbar,numbering=fraction}
  - \usepackage{polyglossia}
  - \setmainlanguage{russian}
  - \setotherlanguage{english}
  - \setmainfont{DejaVu Serif}
  - \setsansfont{DejaVu Sans}
  - \setmonofont{DejaVu Sans Mono}
---

# Цели e задачи работы

## Цель лабораторной работы

Приобрести практические навыки установки и конфигурирования DNS-сервера  
и закрепить понимание принципов работы системы доменных имён.

# Установка e настройка DNS-сервера

## Установка пакетов и проверка работы DNS

![Результат выполнения команды dig www.yandex.ru](image/1.png){ #fig:001 width=80% }

## Анализ конфигурационных файлов DNS

![Просмотр содержимого файлов resolv.conf и named.conf](image/2.png){ #fig:002 width=80% }

## Анализ конфигурационных файлов DNS

![Содержимое файла named.ca](image/3.png){ #fig:003 width=80% }

## Анализ конфигурационных файлов DNS

![Содержимое файлов named.localhost и named.loopback](image/4.png){ #fig:004 width=80% }

## Проверка работы DNS через localhost

![Запрос к DNS через localhost](image/5.png){ #fig:005 width=80% }

# Конфигурирование первичного DNS-сервера

## Добавление файла зоны и настройка конфигурации

![Добавление файла описания зоны в named.conf](image/6.png){ #fig:009 width=80% }

## Создание прямой и обратной зон

![Описание прямой и обратной зон в файле akabrikosov.net](image/7.png){ #fig:010 width=80% }

## Создание файла прямой зоны

![Файл прямой зоны akabrikosov.net](image/8.png){ #fig:011 width=80% }

## Создание файла обратной зоны

![Файл обратной зоны 192.168.1](image/9.png){ #fig:012 width=80% }

## Настройка прав и контекстов SELinux

![Исправление прав доступа и контекстов SELinux](image/10.png){ #fig:013 width=80% }

# Анализ работы DNS-сервера

## Проверка через dig

![Результат запроса dig ns.akabrikosov.net](image/11.png){ #fig:014 width=80% }

## Проверка через host

![Проверка зоны командой host -l и host -a](image/12.png){ #fig:015 width=80% }

## Проверка прямой и обратной записи

![Проверка прямой и обратной записи](image/13.png){ #fig:016 width=80% }

# Внесение изменений в окружение

## Копирование конфигураций DNS в среду Vagrant

![Создание структуры каталогов и копирование файлов DNS](image/14.png){ #fig:017 width=80% }

## Автоматизация конфигурации через dns.sh

![Содержимое скрипта dns.sh](image/15.png){ #fig:018 width=80% }

# Выводы по проделанной работе

## Вывод

В результате лабораторной работы был установлен и настроен DNS-сервер с использованием **bind**.  
Созданы прямые и обратные зоны домена **akabrikosov.net**, внесены необходимые записи.  
Настроены права доступа и контексты SELinux, реализована автоматизация конфигурации через скрипт **dns.sh**.  
Работоспособность DNS-сервера подтверждена тестами утилит **dig** и **host**.
