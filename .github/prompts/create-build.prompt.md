# Command: create-build

## Передумови
Виконано команду `create-project` (існує `src/main.cpp`).

## Дії
Прочитай інструкції з `.github/skills/build-and-test/SKILL.md`. Створи `CMakeLists.txt` та базовий юніт-тест на GoogleTest.

## Очікувані файли
- `CMakeLists.txt`
- `tests/test_main.cpp`

## Команди перевірки
Перевір, що `CMakeLists.txt` містить підключення `gtest` і готовий до збірки проєкту.

## Повідомлення про помилку
Якщо вихідних файлів C++ не знайдено, виведи: "Помилка: вихідний код не знайдено. Спочатку виконайте create-project."