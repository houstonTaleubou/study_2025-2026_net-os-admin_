---
lang: ru-RU
title: "Администрирование сетевых подсистем"
subtitle: "Лабораторная работа №5 — Конфигурирование HTTPS и PHP на Apache"
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

Приобрести навыки конфигурирования веб-сервера Apache  
для работы по защищённому протоколу HTTPS и поддержки PHP.

# Конфигурирование HTTPS

## Создание SSL-ключа и сертификата

![Генерация сертификата](image/1.png){ width=80% }

## Настройка виртуального хоста Apache

![Конфигурация SSL-виртуального хоста](image/2.png){ width=80% }

## Перенаправление HTTP → HTTPS

![Перенаправление на HTTPS](image/3.png){ width=80% }

## Проверка работы HTTPS

![Переход на защищённое соединение](image/4.png){ width=80% }

## Просмотр сертификата в браузере

![Просмотр сертификата](image/5.png){ width=80% }

# Конфигурирование PHP

## Создание index.php

![Файл index.php](image/6.png){ width=80% }

## Проверка phpinfo()

![Вывод phpinfo()](image/7.png){ width=80% }

# Выводы по проделанной работе

## Вывод

Был настроен веб-сервер Apache для работы по протоколу HTTPS  
с использованием самоподписанного сертификата.  
Добавлена поддержка PHP и выполнена проверка его работы.  
Обновлены файлы внутреннего окружения Vagrant  
для сохранения всех выполненных изменений.
