# Команда: create-actions

## Мета

Викликати навичку `github-actions` для налаштування CI/CD у GitHub Actions і
створення локальних скриптів збірки та тестування.

## Вимоги до `.github/workflows/ci.yml`

Створити або оновити workflow без дублювання наявних налаштувань. Файл
`.github/workflows/ci.yml` повинен:

1. запускатися на подіях `push` і `pull_request` виключно для гілок `develop` та
   `master`;
2. використовувати matrix із такими операційними системами:
   - `ubuntu-latest`;
   - `windows-latest`;
   - `macos-latest`;
3. містити крок checkout коду;
4. виконувати конфігурацію через CMake;
5. компілювати проєкт;
6. запускати тести через CTest.

## Вимоги до допоміжних скриптів

Створити в корені проєкту:

- `ci.sh` для Linux і macOS, який виконує конфігурацію CMake, збірку та запуск
  `ctest`;
- `ci.bat` для Windows, який виконує конфігурацію CMake, а потім обов'язково
  запускає `cmake --build . --config Debug` і `ctest -C Debug`.

## Перевірка

Після виконання перевірити наявність `.github/workflows/ci.yml`, `ci.sh` і
`ci.bat`, правильність тригерів і matrix з трьома ОС, а також наявність прапорця
`--config Debug` у командах збірки та тестування Windows-скрипта.
