---
lang: ru-RU
title: "Администрирование сетевых подсистем"
subtitle: "Лабораторная работа №4 — Настройка HTTP-сервера Apache и виртуального хостинга"
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

# Цель работы

## Основная цель

Получить практические навыки установки, настройки и проверки работы HTTP-сервера Apache  
с поддержкой виртуального хостинга и интеграцией с DNS.

# Настройка Apache

## Тестирование клиентом

![Тестовая страница HTTP](image/1.png){ width=70% }

## Прямая и обратная зоны

![Файл прямой зоны](image/2.png){ width=70% }

## Прямая и обратная зоны

![Файл обратной зоны](image/3.png){ width=70% }

## Файл server.akabrikosov.net.conf

![server.akabrikosov.net.conf](image/4.png){ width=75% }

## Файл www.akabrikosov.net.conf

![www.akabrikosov.net.conf](image/5.png){ width=75% }

## Тестовые страницы

![Создание index.html](image/6.png){ width=75% }

## server.akabrikosov.net

![server](image/7.png){ width=65% }

## www.akabrikosov.net

![www](image/8.png){ width=65% }

# Вывод

## Итоги работы

- Установлен и настроен HTTP-сервер Apache  
- Реализован виртуальный хостинг для двух доменных имён  
- Настроены DNS-зоны и интеграция с веб-сервисом  
- Проверена корректная работа обоих сайтов  
- Конфигурации перенесены в окружение Vagrant для автоматизации развертывания
