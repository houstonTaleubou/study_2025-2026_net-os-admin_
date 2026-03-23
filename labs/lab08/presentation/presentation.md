---
lang: ru-RU
title: "Администрирование сетевых подсистем"
subtitle: "Лабораторная работа №8 — Настройка SMTP-сервера на базе Postfix"
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

Приобрести практические навыки установки и конфигурирования SMTP-сервера  
на базе Postfix в виртуальной среде, а также проверить доставку локальной и доменной почты.

## Задачи

- Установить и запустить Postfix на server и client  
- Выполнить настройку параметров Postfix через postconf  
- Проверить доставку локальной почты и пересылку между узлами  
- Настроить доставку на доменные адреса с использованием DNS (A/MX/PTR)  
- Подготовить provisioning-скрипты для автоматизации развёртывания

# Выполнение лабораторной работы

## Установка Postfix на сервере

![Запуск службы Postfix](image/1.png){ #fig:001 width=80% }

## Настройка параметров myorigin e mydomain

![Изменение параметра myorigin](image/2.png){ #fig:002 width=80% }

## Отключение IPv6 в Postfix

![Отключение IPv6](image/3.png){ #fig:003 width=80% }

## Проверка локальной доставки письма

![Просмотр содержимого почтового ящика](image/4.png){ #fig:004 width=80% }

## Анализ журнала maillog

![Анализ журнала maillog](image/5.png){ #fig:005 width=80% }

## Настройка Postfix на клиенте

![Настройка Postfix на клиенте](image/6.png){ #fig:006 width=80% }

## Разрешение пересылки между узлами

![Настройка Postfix на сервере](image/7.png){ #fig:007 width=80% }

## Подтверждение доставки по логам

![Анализ журнала maillog](image/8.png){ #fig:008 width=80% }

## Ошибка при отправке на доменный адрес

![Ошибка доставки доменной почты](image/9.png){ #fig:009 width=80% }

## Проверка очереди сообщений на клиенте

![Очередь сообщений Postfix](image/10.png){ #fig:010 width=80% }

## Настройка прямой DNS-зоны

![Файл прямой DNS-зоны](image/11.png){ #fig:011 width=80% }

## Настройка обратной DNS-зоны

![Файл обратной DNS-зоны](image/12.png){ #fig:012 width=80% }

## Добавление домена в mydestination

![Настройка параметра mydestination](image/13.png){ #fig:013 width=80% }

## Успешная доставка доменной почты

![Успешная доставка доменной почты](image/14.png){ #fig:014 width=80% }

## Подтверждение письма в почтовом ящике

![Полученное доменное письмо](image/15.png){ #fig:015 width=80% }

# Выводы по проделанной работе

## Вывод

- Установлен и настроен Postfix на виртуальных машинах server и client  
- Выполнена настройка параметров Postfix через postconf и проверка конфигурации  
- Подтверждена доставка локальной почты и пересылка между узлами сети  
- Реализована доставка на доменные адреса через настройку DNS-зон и mydestination  
- Подготовлены provisioning-скрипты mail.sh для автоматизации развёртывания
