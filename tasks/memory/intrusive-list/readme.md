# Intrusive List

В этой задаче вам нужно реализовать шаблонный контейнер "интрузивный список". Интерфейс находится в файле `intrusive_list.h`.

Интрузивные списки отличаются от обычных тем, что ссылки на соседние элементы лежат прямо в пользовательском типе. Это позволяет избежать копирования или перемещения объекта в контейнер, поэтому он не накладывает никаких ограничений на наличие у объекта конструкторов копирования и перемещения. Также такой список не аллоцирует и не освобождает память при добавлении и удалении элементов.

Подробнее об особенностях интрузивных контейнеров можно почитать [здесь](http://www.boost.org/doc/libs/1_43_0/doc/html/intrusive/intrusive_vs_nontrusive.html).

## Реализация

В предложенном интерфейсе пользовательский тип, из экземпляров которого будет состоять интрузивный список, должен быть унаследован от базового типа `ListHook`. Методы `ListHook` реализуют механику взаимодействия с объектом интрузивного списка - а именно, элемент может прилинковаться в список с помощью `LinkBefore` и отлинковаться от него с помощью `Unlink`. В этих методах вам нужно аккуратно работать с указателями, чтобы не допустить распад списка.

В самом интрузивном списке мы предлагаем вам использовать идею dummy элемента - специального объекта, который всегда присутствует в списке и соединяет его голову и конец, тем самым делая структуру закольцованной. Имея такой элемент, можно выразить любую вставку через `LinkBefore` и любое удаление через `Unlink` - и нет необходимости в рассмотрении особых случаев при удалении последнего элемента.

Обратите внимание на строчку `friend class List`. Она позволяет классу `List` получить доступ к приватным полям и методам класса `ListHook`.

## Интерфейс итератора

В этой задаче вам нужно будет также реализовать свой итератор. Напомним, что:

 * `++x` заменяется на вызов `operator++()`
 * `x++` заменяется на вызов `operator++(int)`, где параметр фиктивный.
 * `*x` заменяется на вызов `operator*()`
 * `x->field` заменяется на `(x->operator->())->field`.