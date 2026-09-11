# print("Sai Ram Sai Ganesh,Please Don't Give Up")
# print("All The Very Best")

#This is a comment
""" this is a comment """

#print
# print("""Sai""")

#Escape sequences ( \, \\, \n, \t, \b, )
# print("Hi \"Python\"") 
# print('Hello "Python"')
# print("Path: C:\\Users\\Baraa")
# print("Message1\nMessage2")
# print("Header\n\t-Sub1\n\t-Sub2")
# print("""Your learning Path
# \tPython Basics
# \tData Engineering
# AI\tML
# """)
# print("file","flush",sep=" ",end=" *")  

# Variables
# print("Sai")
# print("MY name is Sai")
# print("Sai wants to learn Python\n")

# name="Ganesh"
# print(name)
# print("My name is",name)
# print(name,"wants to learn Python\n")

# name="Sai Ganesh"
# print(name)
# print("My name is",name)
# print(name,"wants to learn Python")


# Input function
# input("Enter your Name:")
# name=input("Enter your Name:")
# country="India"
# print(name,"is from",country)

# Data Types
# a = 5 #int
# b = "Sai" #str
# c = 3.5 #float
# d = True #bool
# e = "123"
# h = None #None type
# j="" #blank (str)
# k=" " #space (str)
# print(a,b,c,d,e,h,j,k)

# Functions and Methods
# print(type("Sai")) #print(value),type(value) functions
# print("Sai".upper()) #value.upper() methods
# a=5
# print(a.bit_length())

#print("sai ram")
# Strings

#Types
# name="Sai Ganesh"
# print(type(name))
# age=25
# print(type(age))
# print("your age is :" + str(age))
# age = age + 5
# age = str(age)
# print(age)
# print(type(age))
# age = age + 5

#Math
# password = "123a78c"
# print(len(password))

# if len (password)<8:
#     print("Your Password is too short")

# text = """
# Python is easy to learn
# Python is powerful
# Many people love python,
# """
# print(text.count("Python"))

#Transformations
# price="1234,56"
# print(price.replace(",","."))
# phone="456-1357-263"
# print(phone.replace("-",""))
# cost="$1,299.99"
# print(cost.replace("$","").replace(",",""))
# number="+49(176) 123-4567"
# print(number.replace("+","").replace(" ","").replace("(","").replace(")","").replace(" ","").replace("-",""))

# first_name = "Sai"
# last_name = "Ganesh"
# name = first_name + " " + last_name 
# print(name)

#f-stings
# name="Sai"
# age=25
# print("My name is " + name + " I am "+ str(age) +" years old")
# print(f"My name is {name}.I am {age} years old")

# print(f"2+3 = {2+3}")
# print(f"Name:{"SAI"} Age:{25}")
# print(f"Name:{{SAI}} Age:{25}")

# Name="Sai Ganesh"
# print(Name.split(" "))

# print("sai ram "*2)
# print("-"*40)

# Name="SriSathya BaBa"
# print(Name[0:3])
# print(Name[10])
# print(Name[0:])
# print(Name[:15])
# print(Name[:15:1])
# print(Name[-4:])
# print(Name[-2])

#CLeaning

# Name = " Sai Ganesh "
# print(Name)
# print(Name.lstrip())
# print(Name.rstrip())
# print(Name.strip())

# age="#25#"
# print(age.strip("#"))
# print(Name.strip(" "))
# print(len(Name))
# print(len(Name.strip()))
# print(len(Name)==len(Name.strip()))
# print(len(Name)-len(Name.strip()))

# name = "sai GANESH"
# print(name.lower())
# print(name.upper())

# search = "Email ".lower().strip()
# data = " emAil".lower().strip()

# print(search==data)

#Search
# phone="+49-176-12345"
# print(phone.startswith("+91"))
# email="sai@gmail.com"
# print(email.endswith("gmail.com"))
# print("@" in email)
# print(email.find("@"))
# print(phone[phone.find("-")+1:])

#Validation
# country="USA"
# print(country.isalpha())
# phone="0124597621"
# print(phone.isnumeric())
# phone1="0124.597621"
# print(phone1.isnumeric())

#Numbers

#Types
# x = 5
# y = 7.7
# z = 2+3j
# print(type(x))
# print(type(y))
# print(type(z))

# print(x * 3)
# print(int(y))
# print(float(x))
# print(complex(x))

#Mathical Operators
# print(2+3)
# print(4-2)
# print(4*2)
# print(7/2)
# print(7//2)
# print(7%2)
# print(2**3)

# x = 2
# x = x + 3
# print(x)
# x+=6
# print(x)
# y=10
# y-=5
# print(y)
# z=5
# z*=5
# print(z)

#Rounding

# print(abs(2-10))
# x=23.5622
# y=23.45
# print(round(x))
# print(round(y))
# print(round(x,2))
# import math 
# print(math.floor(x))
# print(math.ceil(x))
# print(math.trunc(x))
# print(int(x))

#Advanced Math
# import random
# print(random.random())
# print(random.randint(1,6))

# x=7.0
# print(x.is_integer())
# y=7.1
# print(y.is_integer())

# x=70.4
# y=70.0
# z=70
# print(isinstance(x,int))
# print(isinstance(z,float))

# import random
# print(random.randint(1,100)%2==0)

# print("Sai Ram")

#Boolean
# print(True)
# print(False)
# print(type(True))
# print(bool(123))
# print(bool('sairam'))
# print(bool())
# print(bool(0))
# print(bool(1))
# print(bool(""))
# print(bool(None))

# email=""
# phone="125"
# username=""
# age=25
# print(any([email,phone,username]))
# print(all([username,phone,age]))

# print(10==10)
# print(10!=5)
# print(7>3)
# print(5<=2)
# print(1<4<6)

# print(2<5 and 3<5)
# print(1<2 or 5<3)
# print(not 2<5)
# print(not False)
# name=""
# print(not name)
# print(5==5 or 8>5 and 6<4)
# print((5==5 or 8>5) and 6<4)
# password='124'
# print(len(password)>=8 and "" not in password)

#Membership 
# Name="Sai Ganesh"
# print("s" in Name)
# print("a" not in "python")

#Identity
# a=124
# b=124
# c=[1,2,3]
# d=[1,2,3]
# e==c
# print(a is b)
# print(c==d)
# print(c is d)
# print(c==e)
# print(c is e)

#Conditional Statements

# score= 100
# if score >= 90:
#     print("A")
# print("Done")    

# score= 55
# if score >= 90:
#     print("A")
# else:
#     print("B")
# print("Done")    

# score= 55
# if score >= 90:
#     print("A")
# elif score >=80:
#     print("B")  
# elif score >=60:
#     print("c")
# else:
#     print("D")
# print("Done")    


#Nested If

# score=55
# submitted_project = True
# if score >= 90:
#     if submitted_project:
#         print("A+")
#     else:    
#         print("A")
# elif score >=80:
#     print("B")  
# elif score >=60 or submitted_project:
#     print("c")
# else:
#     print("D")
# print("Done")    

#Inline If statements
# score=55
# grade = "A" if score >=90 else "B" if score >=80 else "F"
# print(grade)

#match Case


#Loops
# for i in (1,2,3,4,5):
#     print(f"Round:{i}",i)

# items = " python"
# for item in items:
#     print(f"Word:{item}")

# for i in range(5):
#     print(i)
# for i in range(1,11):
#     print(i)
# for i in range(1,11,2):
#     print(i)    

# files=[' Report.csv ','DATA.csv ',' final.TXT']
# for file in files:
#     file = file.strip().lower().replace('.txt','.csv')
#     print(f'cleaning {file}')

# for i in range(1,11):
#     print(f" 7 X {i} = {7 * i}" )

#Break(Stop),Continue(Skip),Pass

# for i in (1,2,3,'',5):
#     if i =='':
#         print("Empty")
#         break
#     print(f"Round:{i}")



# for i in (1,2,3,'',5):
#     if i =='':
#         print("Empty")
#         continue
#     print(f"Round:{i}")

# for i in (1,2,3,'',5):
#     if i =='':
#         pass
#     print(f"Round:{i}")

#For If ELse 
# items=[1,7,3,5]
# for i in items:
#     if i % 2 == 0:
#         print( "Even Found :",i)
#         break
# else:
#     print("All numbers are odd")    

#Nested Loops
# for x in range(3): #outer loop
#     for y in range(2): #inner loop
#         print(f"({x}, {y})")

#While Loop
# i=1
# while i<5:
#     print(i)
#     i+=1

# answer=""
# while answer != "yes":
#     answer=input("Do you agree ? (yes/no):")
# print("Thank You")    


#Data Structures

#List
#create Lists
# empty=[]
# print(empty)
# print(type(empty))

# name="Sai Ganesh"
# print(list(name))

# print(list(range(5)))

# matrix = [['a','b','c'],['d','e','f']]
# print(matrix)
# print(type(matrix))

# mixed_matrix = [['a','b'],
#                 [1,2,4],
#                 [True]]
# print(mixed_matrix)

#Access List

# lst = [1,2,4,'a','b']
# print(lst[0])
# print(lst[1:5])
# print(lst[-1])
# print(lst[-4:-1])

# matrix = [['a','b','c'],
#           [1,2,4],
#           ['d','e','f']]
# print(matrix)
# print(matrix[1])
# print(matrix[1][2])
# print(matrix[0:2][0:1])

#Unpacking

# person = ['Maria',29,'Data Engineer','India']
# name = person[0]
# age = person[1]
# print(name)
# name,age,role,country = person
# print(role)
# name,*details,country = person
# print(name)
# print(details)
# print(country)

# name,*details=person
# print(name)
# print(details)

# name,_,role,_ = person
# print(name)
# print(role)

# numbers=[1,5,2,4,3,5,2]
# print("Max:",max(numbers))
# print("Min:",min(numbers))
# print("Len:",len(numbers))
# print("Sum:",sum(numbers))

# print("all:",all(numbers))
# print("all:",all([1,0,2]))
# print("any:",any([1,0,2])

# print("count:",numbers.count(5))
# print("index:",numbers.index(2))
# print( 5 in numbers)
# print(not 2 in numbers)


# list1 = [1,2,3]
# list2 = [1,2,3]
# print(list1 == list2)
# print(list1 is list2)

# num = [1,2,3,4,'a','b',6]
# print(num)
# num.append('c')
# print(num)
# num.insert(2,'v')
# print(num)
# num.remove('b')
# print(num)
# num.clear()
# print(num)
# num.pop()
# print(num)
# num[1]=5
# print(num)

#Sort
# alp = ['a','b','c','e','d']
# desc=alp.sort(reverse = True)
# print(alp)
# print(sorted(alp))
# print(list(reversed(alp)))

#copy
# org = [1,2,3]
# cp = org
# print(org)
# print(cp)
# cp.append(4)
# cp=org.copy()
# print(cp)
# print(org)
# cp.append(5)
# print(cp)
# print(org)

#deepcopy() from copy module

# num = [1,2,3]
# let = ['a','b','c']
# num1 = [2,3,4]
# # com = num + let
# # print(com)

# com1 = num + num1
# print(com1)

# com2 = [num,num1]
# print(com2)

# num1.extend(num)
# print(num1)

#Zip
# names=['Sai','Ganesh','Sai Ram']
# id=[101,102,103]
# print(list(zip(id,names)))

#Iterators

# letters = ['a','b','c']
# for i in letters:
#     print(i.upper())

# letters = ['a','b','c']
# print(list(enumerate(letters,start=1)))
# for index,value in enumerate (letters):
#     print(index,value)

#reveresed
#zip
#map
#filter

#Lambda
# mul = lambda x,y : x + y
# print(mul(2,4))

#List Comprehension

#Tuples

# numbers = (1,2,4,2)
# print(numbers)
# print(numbers[1])

# Sets

# my_set = {1,2,3,5,2} #unique , unordered ,mutable
# print(my_set)
#add, update, discard
#union (|), intersection (&), difference,issubset, issuperset ,isdisjoint

#Dictionaries

my_dict = { 1:'a', 2:'b'}
# print(my_dict[1])
# print(my_dict.get(2))
# print(1 in my_dict)
# print(my_dict.keys())
# print(my_dict.values())
# print(my_dict.items())
# print(my_dict)

# for d in my_dict:
#     print(d,my_dict[d])

# for key, value in my_dict.items():
#     print(key,value)

