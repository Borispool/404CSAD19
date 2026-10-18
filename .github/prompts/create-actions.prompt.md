# Command: create-actions

## Передумови
Виконано команду `create-build` (існує `CMakeLists.txt` та налаштовані тести).

## Дії
Прочитай інструкції з `.github/skills/github-actions/SKILL.md`. Створи CI workflow для GitHub Actions.

## Очікувані файли
- `.github/workflows/ci.yml`

## Команди перевірки
Перевір, що файл `ci.yml` створено і він містить матрицю для трьох операційних систем.

## Повідомлення про помилку
Якщо систему складання не знайдено, зупинись і виведи: "Помилка: CMakeLists.txt не знайдено. Спочатку виконайте create-build."