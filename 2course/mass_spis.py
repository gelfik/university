i=0

list = [0]
list.pop(0)

def add_elem():
    for i in range(1):
        strok = (input("Введите элементы, через пробел, которые хотите добавить: ").split())
        for i in range(len(strok)):
            strok[i] = str(strok[i])
        list.append(strok)

    list.sort()
    
    print()
    print(list)

def del_elem():
    if len(list) == 0:
        print("Удаление не возможно!")
        print()
    else:
        print(list)
        for i in range(1):
            strok = (input("Введите значения для удаления: ").split())
            for i in range(len(strok)):
                strok[i] = str(strok[i])
            list.remove(strok)

    list.sort()
    
    print()
    print(list)

while True:
    print("1 - Добавление элемента\n2 - Удаление элемента\n3 - Выход")
    x = int(input("Ваш выбор: "))
    print()
    if x == 1: add_elem()
    if x == 2: del_elem()
    if x == 3:break
