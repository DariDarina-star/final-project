#!/bin/bash

function show_help {
    echo "Использование: $0 [путь_к_каталогу_или_файлу]"
    echo "Создает резервную копию указанных файлов или каталогов."
    exit 1
}

if [ $# -eq 0 ]; then
    show_help
fi

BACKUP_DIR="$HOME/backup"
mkdir -p "$BACKUP_DIR"

DATE=$(date +"%Y%m%d_%H%M%S")

BACKUP_FILE="$BACKUP_DIR/backup_$DATE.tar.gz"

tar -czf "$BACKUP_FILE" "$@"

if [ $? -eq 0 ]; then
    echo "Резервная копия успешно создана: $BACKUP_FILE"
else
    echo "Произошла ошибка при создании резервной копии."
fi
