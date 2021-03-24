#!/bin/bash

cd /var/logs/archive

# установить права на запись в эту директорию для всех
chmod a+w /var/logs/archive

# распаковать архив
tar -xvf backup.tar.gz

# удалить все файлы имена которых заканчиваются на .tmp
rm -f *.tmp

# вывести имена всех файлов которые содержат строку user deleted
grep -rl 'user deleted'
