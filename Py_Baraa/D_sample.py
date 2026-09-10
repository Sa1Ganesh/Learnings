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

for i in (1,2,3,'',5):
    if i =='':
        pass
    print(f"Round:{i}")
