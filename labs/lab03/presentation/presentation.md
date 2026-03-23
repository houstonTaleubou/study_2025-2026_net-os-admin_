---
lang: ru-RU
title: "Администрирование сетевых подсистем"
subtitle: "Лабораторная работа №3 — Настройка DHCP-сервера и динамических обновлений DNS"
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

Приобрести практические навыки по установке и конфигурированию DHCP-сервера  
и настройке динамического обновления DNS-зон (DDNS).

# Настройка DHCP-сервера

## Базовая конфигурация Kea DHCP

![Фрагмент файла kea-dhcp4.conf](image/1.png){ #fig:001 width=80% }

## Настройка сетевых параметров и DNS-опций

![DNS-опции в конфигурации DHCP](image/2.png){ #fig:002 width=80% }

## Привязка к интерфейсу и проверка конфигурации

![Проверка конфигурационного файла](image/3.png){ #fig:003 width=80% }

## Интеграция с DNS: прямые и обратные зоны

![Прямая DNS-зона](image/4.png){ #fig:004 width=80% }

## Обратная DNS-зона

![Обратная DNS-зона](image/5.png){ #fig:005 width=80% }

## Проверка доступности DHCP-сервера по имени

![Проверка доступности имени dhcp.akabrisov.net](image/6.png){ #fig:006 width=80% }

## SELinux и межсетевой экран

![Настройка SELinux и firewall](image/7.png){ #fig:007 width=80% }

## Получение адреса клиентом по DHCP

![Содержимое файла аренды адресов DHCP](image/8.png){ #fig:008 width=80% }

## Параметры сетевых интерфейсов клиента

![Вывод ifconfig на клиенте](image/9.png){ #fig:009 width=80% }

## Создание и подключение TSIG-ключа

![Создание ключа TSIG](image/10.png){ #fig:010 width=80% }

## Разрешение обновлений DNS-зон (Bind)

![Настройка update-policy в зонах](image/11.png){ #fig:011 width=80% }

## Описание TSIG-ключа для Kea

![Файл tsig-keys.json](image/12.png){ #fig:012 width=80% }

## Настройка kea-dhcp-ddns

![Файл kea-dhcp-ddns.conf](image/13.png){ #fig:013 width=80% }

## Запуск службы DHCP-DDNS

![Запуск kea-dhcp-ddns](image/14.png){ #fig:014 width=80% }

## Включение DDNS в kea-dhcp4.conf

![Фрагмент обновлённого kea-dhcp4.conf](image/15.png){ #fig:015 width=80% }

## Запуск и проверка службы Kea DHCP

![Запуск kea-dhcp](image/16.png){ #fig:016 width=80% }

## Проверка создания DNS-записей для клиента

![Результат выполнения dig](image/17.png){ #fig:017 width=80% }

## Интерпретация результата dig

- Заголовок: успешный ответ (NOERROR)
- Сервер ответа: 192.168.1.1 (server)
- QUESTION: `client.akabrisov.net`
- ANSWER: IP-адрес клиента из DHCP
- Вывод: DHCP → Kea DDNS → Bind9 работают согласованно

## Скрипт автоматической настройки dhcp.sh

![Скрипт dhcp.sh для автоматической настройки](image/18.png){ #fig:018 width=80% }

# Выводы по проделанной работе

## Основные resultados

- Настроены сервисы:
  - Kea DHCP (выдача IP-адресов)
  - Bind9 DNS (прямые и обратные зоны)
- Реализовано динамическое обновление DNS-зон (DDNS)  
  с использованием TSIG-ключей и Kea DHCP-DDNS.
