name = "Jitendra"
csoutput = document.getElementById("csoutput")
csoutput.innerHTML = "Hello #{name}"

aString = "I'm a coffeescript person"
csoutput.insertAdjacentHTML("beforeend"," <br>"+aString+" is in coffee.js") if typeof aString is 'string'

large = Number.MAX_VALUE
small = Number.MIN_VALUE
largestr = "The large no is #{large}"
smallstr = "The small no is #{small}"
csoutput.insertAdjacentHTML("beforeend","<br>"+largestr+"<br>")
csoutput.insertAdjacentHTML("beforeend",""+smallstr+"<br>")

addmath = Math.E
csoutput.insertAdjacentHTML("beforeend","<br>#{addmath}")

arraystr = ("This is the demo for you").split(" ")
for x in arraystr
	csoutput.insertAdjacentHTML("beforeend","<br>#{x}")

age = 10
switch age
	when 5 then csoutput.insertAdjacentHTML("beforeend","<br>In jquery")
	when 6,7,8,9,10 then csoutput.insertAdjacentHTML("beforeend","<br>In javascript")
	else csoutput.insertAdjacentHTML("beforeend","<br>In typescript")

if age?
	csoutput.insertAdjacentHTML("beforeend","<br>Age is #{age} year old")
else
	csoutput.insertAdjacentHTML("beforeend","<br>age is empty")

hat = "its hat"
coat = "its coat"
glove = null
if hat? and coat?
	csoutput.insertAdjacentHTML("beforeend","<br>The values are:#{hat} , #{coat} , #{glove ? 'its glove'}")

randarray = ["word",false,1234,12.34]
csoutput.insertAdjacentHTML("beforeend","<br>array value is #{randarray[2]}")
csoutput.insertAdjacentHTML("beforeend","<br>another value is #{randarray[1..3]}")

arr1 = [1..50]
arr2 = [50..1]
combine = arr1.concat arr2
arr1.push arr2...
csoutput.insertAdjacentHTML("beforeend","<br>The overalll is #{arr1}")

people = [
	{
		name:"Devendra",
		age:23
	},
	{
		name:"Swapnil",
		age:22
	}
]
csoutput.insertAdjacentHTML("beforeend","<br>the people is #{people[0].name}")

helloFunc = (name) ->
	return "hello #{name}"
csoutput.insertAdjacentHTML("beforeend","<br>function value is #{helloFunc('devendra-swapnil')}")

getRandom = ->
	return Math.floor(Math.random()*1000)+1
csoutput.insertAdjacentHTML("beforeend","<br>Random val is #{getRandom()}")

sumofnums = (vars...) ->
	sum = 0
	for x in vars
		sum += x
	return sum
csoutput.insertAdjacentHTML("beforeend","<br>The sum is #{sumofnums(2,2,23,4,5)}")

rank = (star = 1) ->
	if star<=2
		"nice"
	else
		"bad"
csoutput.insertAdjacentHTML("beforeend","<br>rank is #{rank()}")
csoutput.insertAdjacentHTML("beforeend","<br>rank its #{rank(3)}")

factorial = (x) ->
	return 0 if x < 0
	return 1 if x == 0 or x == 1
	return x * factorial(x - 1)
csoutput.insertAdjacentHTML("beforeend","<br>factorial is #{factorial(4)}")


factorial2 = (x) ->
	if x<0
		return 0
	if x == 0 or x == 1
		return 1
	return x * factorial (x-1)
csoutput.insertAdjacentHTML("beforeend","<br>another factorial is #{factorial2(4)}")

class Animal
	name:"no name"
	height:0
	weight:0
	sound:"no sound"

	@numofAnimals:0

	@getNumofAnimals: () ->
		Animal.numofAnimals

	constructor: (name = "no name",@height = 0,@weight = 0) ->
		@name = name
		
		Animal.numofAnimals++

	makeSound: ->
		"says #{@sound}"

	getInfo: ->
		"#{@name} is weight: #{@weight} and height: #{@height} and sound #{@sound}"

grov = new Animal()
grov.name = "Tiger"
grov.height = 50
grov.weight = 200
grov.sound = "hrrrrrrrddddddd"
csoutput.insertAdjacentHTML("beforeend","<br>class detail is #{grov.getInfo()}")

Animal::isItBig = ->
	if @height >= 50
		"yes"
	else
		"nop"
csoutput.insertAdjacentHTML("beforeend","<br>The big is #{grov.isItBig()}")

class Dog extends Animal
	sound2:"no sound"

	constructor: (name="no name",height=0,weight=0) ->
		super(name,height,weight)

	makeSound: ->
		super + " and #{@sound2}"

spark = new Dog("Spark")
spark.sound = "hrrrrrrrrrrrrrrrrrrr"
spark.sound2 = "htttttttttttt"
csoutput.insertAdjacentHTML("beforeend","<br>The inherited is #{spark.getInfo()}")