---
lang: ru-RU
title: "Администрирование сетевых подсистем"
subtitle: "Лабораторная работа №6 — Установка и настройка MariaDB"
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

# Цели и задачи работы

## Цель лабораторной работы

Овладеть практическими навыками установки, конфигурирования  
и администрирования системы управления базами данных MariaDB.

# Выполнение лабораторной работы

## Установка пакетов MariaDB

![Установка пакетов MariaDB](image/1.png){ #fig:001 width=80% }

## Настройка безопасности

![mysql_secure_installation](image/2.png){ #fig:003 width=80% }

## Список клиентских команд

![Команды клиента MySQL](image/3.png){ #fig:004 width=80% }

## Просмотр доступных баз данных

![SHOW DATABASES](image/4.png){ #fig:005 width=60% }

## Статус MariaDB до изменения кодировки

![Статус MariaDB — до настройки UTF-8](image/5.png){ #fig:006 width=80% }

## Создание файла utf8.cnf

![Файл utf8.cnf](image/6.png){ #fig:007 width=70% }

## Статус MariaDB после настройки UTF-8

![Статус MariaDB — после настройки UTF-8](image/7.png){ #fig:008 width=80% }

## Создание таблицы и добавление данных

![Таблица city](image/8.png){ #fig:009 width=80% }

## Создание пользователя и назначение привилегий

![Права пользователя](image/9.png){ #fig:010 width=80% }

## Просмотр структуры таблицы

![DESCRIBE city](image/10.png){ #fig:011 width=60% }

## Просмотр списка таблиц

![mysqlshow addressbook](image/11.png){ #fig:012 width=80% }

## Создание резервных копий

![Резервные копии БД](image/12.png){ #fig:013 width=80% }

## Скрипт автоматической настройки MariaDB

![Скрипт mysql.sh](image/13.png){ #fig:015 width=80% }


# Выводы

## Итоги выполненной лабораторной работы

В результате работы была проведена полная установка и настройка MariaDB:  
- Установлены серверные и клиентские пакеты.  
- Настроена система безопасности MariaDB.  
- Созданы база данных и таблицы, добавлены данные.  
- Настроены пользователи и привилегии.  
- Созданы резервные копии и выполнено восстановление базы.  
- Реализована автоматизация развёртывания с помощью скрипта mysql.sh.  

Получены навыки администрирования серверов баз данных и управления окружением MariaDB.
