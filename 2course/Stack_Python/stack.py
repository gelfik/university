i = 0

stack = [0]
stack.pop(0)

class list(object):
    def append(self, p_object):
        pass

    def pop(self, index=None):
        pass

def add_elem():
    for i in range(1):
        stack.append(int(input("Введите элемент, который хотите добавить в стек: ")))
        print()
        print(stack)


def del_elem():
    if len(stack) == 0:
        print("Удаление не возможно!")
        print()
    else:
        for i in range(1):
            stack.pop()
            print()
            print("Элемент удален!")
            print(stack)


while True:
    print("1 - Добавление элемента\n2 - Удаление элемента\n3 - Выход")
    x = int(input("Ваш выбор: "))
    print()
    if x == 1: add_elem()
    if x == 2: del_elem()
    if x == 3: break
