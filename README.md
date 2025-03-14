```mermaid
gantt
    title Проект разработки
    dateFormat  YYYY-MM-DD
    section Планирование
    Анализ требований        :a1, 2023-01-01, 7d
    Проектирование           :a2, after a1, 10d
    section Разработка
    Кодирование              :a3, after a2, 15d
    Тестирование             :a4, after a3, 10d
    section Завершение
    Документация             :a5, after a4, 5d
    Развертывание            :a6, after a5, 3d
```