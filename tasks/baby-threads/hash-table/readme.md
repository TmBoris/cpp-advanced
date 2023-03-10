# Concurrent Hash Map

В этой задаче вам предстоит реализовать поддерживающую многопоточность хеш-таблицу.
Таблица поддерживает отображение ключ -> значение, где каждому ключу ставится в
соответствие единственное значение.

Базовая реализация находится в файле `concurrent_hash_map.h`. Эта реализация использует
`std::unordered_map` и мьютекс для блокирования перед всеми операциями, что неэффективно
при наличии большого числа потоков, одновременно работающих с таблицей.

Обратите внимание, что метод цепочек дает способ блокировать не всю таблицу --- ведь очередная операция
работает только с одним списком. Однако при этом нужно аккуратно выполнять рехеширование при
заполнении таблицы.

Вы можете использовать идею из предыдущего абзаца для реализации более эффективной таблицы.
Ваша реализация должна содержать тот же интерфейс, что и приведенная базовая. Несколько комментариев по нему:

1. `expected_size` в конструкторах лишь подсказка для вашего класса --- реальное число вставленных элементов
может быть и больше, и меньше (аналог `reserve`).
2. Аналогично, `expected_threads_count` --- ожидаемое число потоков, работающих с таблицей одновременно, ---
тоже лишь подсказка (впрочем, обычно соответствующая действительности).
3. Константа `kUndefinedSize` используется, когда размер таблицы заранее неизвестен, а число потоков известно.
4. `hasher` (по умолчанию объект класса `std::hash`) осуществляет отображение из пространства ключей в `size_t`.
Вы можете считать, что хешер распределяет ключи по `size_t` достаточно хорошо. Впрочем, если это не так, это не
должно приводить к неработоспособности таблицы. В таком случае должно ухудшаться только время работы (и, возможно, потребляемая память).
5. `Erase` и `Build` возвращают `true` в случае успешного удаления/вставки. Если элемент с таким ключом уже есть, то `Build` не должен ничего
делать.

### Вопросы

* Почему в интерфейсе отсутствует оператор [ ], возвращающий ссылку? Какие трудности связаны с его реализацией? Как должна быть устроена таблица,
чтобы данный оператор можно было реализовать?
* В каких случаях реализация с общей блокировкой более эффективна?

### Полезные ссылки
* http://en.cppreference.com/w/cpp/thread/mutex
* http://en.cppreference.com/w/cpp/thread/lock_guard
* http://en.cppreference.com/w/cpp/thread/unique_lock
* [std::lock_guard vs std::unique_lock](http://stackoverflow.com/questions/20516773/stdunique-lockstdmutex-or-stdlock-guardstdmutex)
* https://habrahabr.ru/post/250383/

### Ограничения
Время выполнения каждого бенчмарка не должно превышать 1500 ns, а cpu time не должно превышать 5000 ns. Программа должна расходовать не более 32 МБ памяти на тестах и не более 256 МБ на бенчмарках.

В этой задаче запрещено использование `std::shared_mutex` и ассоциативных контейнеров. Полный список запрещенных классов смотрите в `.tester.json`.
