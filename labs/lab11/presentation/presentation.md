---
lang: ru-RU
title: "Администрирование сетевых подсистем"
subtitle: "Настройка безопасного удалённого доступа по протоколу SSH"
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

Приобрести практические навыки настройки безопасного удалённого доступа к серверу  
с помощью SSH и средств контроля (sshd_config, firewall, SELinux, ключевая аутентификация, туннели).

# Выполнение лабораторной работы

## Мониторинг событий e попытка входа root

![Мониторинг событий e попытка входа root](image/1.png){ #fig:001 width=80% }

## Ошибки аутентификации root em журнале

![Ошибки аутентификации root](image/2.png){ #fig:002 width=80% }

## Запрет удалённого входа para root

![Параметр PermitRootLogin no](image/3.png){ #fig:003 width=80% }

## Результат после запрета root

![Отказ em доступе root por SSH](image/4.png){ #fig:004 width=80% }

## Успешное подключение пользователя akabrikosov

![Подключение пользователя akabrikosov](image/5.png){ #fig:005 width=80% }

## Ограничение списка пользователей AllowUsers

![AllowUsers: доступ ограничен](image/6.png){ #fig:006 width=80% }

## Отказ em доступе пользователю вне AllowUsers

![Отказ пользователю вне списка AllowUsers](image/7.png){ #fig:007 width=80% }

## Разрешение доступа двум пользователям

![AllowUsers: vagrant e akabrikosov](image/8.png){ #fig:008 width=80% }

## Настройка двух портов para SSH

![Добавление Port 2022](image/9.png){ #fig:009 width=80% }

## Ошибка bind no порт 2022

![Ошибка Bind to port 2022](image/10.png){ #fig:010 width=80% }

## Исправление SELinux e firewall para 2022

![Статус sshd после настройки SELinux e firewall](image/11.png){ #fig:011 width=80% }

## Подключение por SSH через порт 2022

![Подключение por порту 2022](image/12.png){ #fig:012 width=80% }

## Разрешение аутентификации por ключу

![PubkeyAuthentication yes](image/13.png){ #fig:013 width=80% }

## Подключение por ключу sem senha

![Подключение por ключу](image/14.png){ #fig:014 width=80% }

## SSH-туннель e перенаправление портов

![TCP-соединения e туннель](image/15.png){ #fig:015 width=80% }

## Проверка доступа к веб-странице через туннель

![Доступ к веб-странице через туннель](image/16.png){ #fig:016 width=80% }

## Запуск консольных команд через SSH

![Удалённый запуск консольных команд](image/17.png){ #fig:017 width=80% }

## Просмотр почты no сервере через SSH

![Просмотр почты no сервере](image/18.png){ #fig:018 width=80% }

## Разрешение X11 Forwarding

![X11Forwarding yes](image/19.png){ #fig:019 width=80% }

## Попытка запуска графического приложения por SSH

![Ошибка DISPLAY при X11 Forwarding](image/20.png){ #fig:020 width=80% }

# Выводы по проделанной работе

## Вывод

В ходе работы настроены механизмы безопасного удалённого доступа por SSH:  
запрет входа para root, ограничение пользователей через AllowUsers, работа через два порта с настройкой SELinux e firewall,  
аутентификация por ключу, организация SSH-туннелей e удалённый запуск приложений.  
Проверки подтвердили корректность конфигурации e соблюдение принципов безопасного доступа.
