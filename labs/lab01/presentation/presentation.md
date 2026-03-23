---
lang: ru-RU
title: "Администрирование сетевых подсистем"
subtitle: "Лабораторная работа №1 — Развёртывание лабораторного стенда с использованием Vagrant"
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

Овладеть практическими навыками установки операционной системы Rocky Linux  
на виртуальную машину с помощью инструмента Vagrant и автоматизации процесса развёртывания.

# Выполнение лабораторной работы

## Подготовка среды

![Подготовка среды VirtualBox и Vagrant](image/1.png){ #fig:001 width=80% }

## Создание файлов проекта

![Скрипт 01-user.sh](image/2.png){ #fig:002 width=80% }

## Создание файлов проекта

![Скрипт 01-hostname.sh](image/3.png){ #fig:003 width=80% }

## Конфигурация Vagrantfile

![Файл Vagrantfile с описанием provision](image/4.png){ #fig:004 width=80% }

## Регистрация box-файла em Vagrant

![Добавление box-файла em систему Vagrant](image/5.png){ #fig:005 width=80% }

## Запуск виртуальной машины Server

![Запуск виртуальной машины server](image/6.png){ #fig:006 width=80% }

## Проверка входа em систему

![Окно входа em систему Rocky Linux](image/7.png){ #fig:007 width=80% }

## Проверка имени хоста

![Отображение hostname server.akabrikosov.net](image/8.png){ #fig:008 width=80% }

# Выводы по проделанной работе

## Вывод

В результате работы был развернут лабораторный стенд на базе VirtualBox и Vagrant.  
Были созданы и протестированы сценарии автоматического развёртывания виртуальной машины  
с использованием скриптов 01-user.sh и 01-hostname.sh.  
Проверена корректность настроек пользователя, имени хоста и подключения по SSH.
