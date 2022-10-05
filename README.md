# Простейшие скрипты для bash под MacOS 

## Введение

Баш-скрипты могут существенно упростить обработку и внесение изменений в текстовые и бинарные файлы, а также дать возможность отражать эти изменения в файле логов, что и реализовано в простейших скриптах, которые находятся в src/.

## Инструкция по применению

Важно заметить, что данные скрипты были написаны именно под MacOS, синтаксис в других ОС несущественно, но отличается.
Для работы с этими скриптами стоит их склонировать, после чего появится возможность их 
использовать. 

Скрипт edit.sh предназначен для поиска и последующей замены строк в файле на заданные.

Команда для использования скрипта edit.sh:

```
$ ./edit.sh <путь до файла> <строка, которую нужно найти> <строка, на которую заменить>
```

Скрипт log_analyzer.sh предназначен для анализа файла логов (общее количество записей, количество уникальных файлов и количество изменений, приведших к изменению hash файла).

Команда для использования скрипта log_analyzer.sh:

```
$ ./log_analyzer.sh <путь до файла>
```

![Picture](https://github.com/GorokhovSemyon/Simple_bash_scripst-MacOS-/blob/develop/materials/bin-bash.jpg)

