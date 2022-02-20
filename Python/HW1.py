# 1) Создать переменную типа String строка
s = 'Alla'
# 2) Создать переменную типа Integer числа
i = 5
# 3) Создать переменную типа Float числа с плавающей точкрой
f = 0.7
# 4) Создать переменную типа Bytes
b = b'Alla'
# 5) Создать переменную типа List список(массив)
l = [1, 4, 6, 45, 'qwerty']
# 6) Создать переменную типа Tuple кортеж
t = (6, 4, 56, 'qwerty')
tuple = tuple('Tuple')
# 7) Создать переменную типа Set множество
set_1 = {1, 3, 6}
set_2 = set(l) #из списка
# 8. Создать переменную типа Frozen set неизменяемое множество
fr_s = frozenset(l)
# 9) Создать переменную типа Dict словарь
d = {'name': 'Alla', 'city': "Obninsk"}
# 10) Вывести в консоль все выше перечисленные переменные с добавлением типа данных.
print(s, type(s))
print(i, type(i))
print(f, type(f))
print(b, type(b))
print(l, type(l))
print(t, type(t))
print(tuple, type(tuple))
print(set_1, type(set_1))
print(set_2, type(set_2))
print(fr_s, type(fr_s))
print(d, type(d))
# 11) Создать 2 переменные String, создать переменную в которой сканкатенируете эти переменные. Вывести в консоль.
name = 'Alla'
surname = 'Besedina'
FIO = name + surname
print(FIO)
# 12) Вывести в одну строку переменные типа String и Integer используя “,” (Запятую)
print(s, ',', i)
print(s, i, sep=',')
# 13) Вывести в одну строку переменные типа String и Integer используя “+” (Плюс)
print(s, '+', i)
print(s, i, sep='+')
