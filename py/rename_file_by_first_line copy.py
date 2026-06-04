import os
import re

def rename_files_by_first_line(directory):
    # Проверяем, существует ли указанная директория
    if not os.path.isdir(directory):
        print(f"Ошибка: Директория '{directory}' не найдена.")
        return

    # Перебираем все элементы в директории
    for filename in os.listdir(directory):
        filepath = os.path.join(directory, filename)

        # Пропускаем вложенные папки, работаем только с файлами
        if not os.path.isfile(filepath):
            continue

        try:
            # Открываем файл и читаем первую строку
            with open(filepath, 'r', encoding='utf-8') as file:
                first_line = file.readline().strip()

            # Если файл пустой или состоит только из пробелов/переносов
            if not first_line:
                print(f"Пропущен (пустая первая строка): {filename}")
                continue

            # 1. Удаляем символы, запрещенные в именах файлов (Windows/Linux/Mac)
            # 2. Убираем лишние пробелы по краям
            # 3. Ограничиваем длину имени (например, до 100 символов), чтобы избежать ошибок ОС
            safe_name = re.sub(r'[\\/*?:"<>|]', "", first_line).strip()[:100]

            if not safe_name:
                print(f"Пропущен (нет допустимых символов в строке): {filename}")
                continue

            # Сохраняем оригинальное расширение файла (например, .txt)
            _, ext = os.path.splitext(filename)
            new_filename = f"{safe_name}{ext}"
            new_filepath = os.path.join(directory, new_filename)

            # Если файл с таким именем уже существует, добавляем к имени цифру
            counter = 1
            while os.path.exists(new_filepath):
                # Если новое имя совпадает со старым, пропускаем
                if new_filepath == filepath:
                    break
                new_filename = f"{safe_name} ({counter}){ext}"
                new_filepath = os.path.join(directory, new_filename)
                counter += 1

            # Переименовываем файл
            if new_filepath != filepath:
                os.rename(filepath, new_filepath)
                print(f"Успех: '{filename}' -> '{new_filename}'")

        except UnicodeDecodeError:
            # Срабатывает, если скрипт наткнулся на бинарный файл (картинку, pdf, exe и т.д.)
            print(f"Пропущен (не текстовый файл): {filename}")
        except Exception as e:
            print(f"Ошибка при обработке '{filename}': {e}")

# --- ЗАПУСК СКРИПТА ---
if __name__ == "__main__":
    # Укажите путь к вашей папке. 
    # '.' означает текущую папку (где лежит сам скрипт).
    target_directory = '.' 
    
    print(f"Начинаем обработку файлов в папке: {os.path.abspath(target_directory)}\n")
    rename_files_by_first_line(target_directory)
    print("\nГотово!")