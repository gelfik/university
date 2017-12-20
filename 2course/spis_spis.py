class Node:
    def __init__(self, value = None, next = None):
        self.value = value
        self.next = next

class List_In_List:
    def __init__(self):
        self.first = None
        self.last = None
        self.length = 0

    def __str__(self):
        if self.first != None:
            current = self.first
            col=0
            out = 'Список списков: \n' + 'ID: '+ str(col) +' - ' +str(current.value) +'\n'
            while current.next != None:
                current = current.next
                col=col+1
                out += 'ID: '+ str(col) +' - ' +str(current.value) + '\n'
            return out
        return 'Список списков: Пусто!!!'

    def clear(self):
        self.__init__()
        print('Список списков очищен!!!')

    def add(self):
        self.length += 1
        x = input("Введите элементы, через пробел, которые хотите добавить: ").split()
        print()
        if self.first == None:
            self.last = self.first = Node(x, None)
        else:
            self.last.next = self.last = Node(x, None)
        print(list)

    def Push(self, x):
        if self.first == None:
            self.first = Node(x,None)
            self.last = self.first
        else:
            self.first = Node(x,self.first)

    def Pop(self):
        oldhead = self.first
        if oldhead == None:
            return None
        self.first = oldhead.next
        if self.first == None:
            self.last = None
        print(list)
        return oldhead.value


list = List_In_List()

while True:
    print("1 - Добавление элемента\n2 - Удаление элемента\n3 - Полное очищение списка\n00 - Вывод списка\n99 - Выход")
    answer = int(input("Ваш выбор: "))
    print()
    if answer == 1: list.add()
    if answer == 2: list.Pop()
    if answer == 3: list.clear()

    if answer == 00: print(list)
    if answer == 99: break
