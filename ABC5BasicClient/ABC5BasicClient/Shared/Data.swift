//
//  Data.swift
//  ABC5BasicClient
//
//  Created by Bernardinus on 15/06/20.
//  Copyright © 2020 ADA. All rights reserved.
//

import Foundation

enum Theme
{
    case None
    case Fruits
    case Animal
}

//let sessionPickerData = [String](arrayLiteral: "10 second", "20 Second", "30 Second")
//let themePickerData = [String](arrayLiteral: "Animal", "Fruits")


let fruitAnswer:[String:[String]] = [
    "A":["Ackee","Apple","Apricot","Avocado"],
    "B":["Banana","Bilberry","Blackberry","Blackcurrant","Blueberry","Boysenberry","Breadfruit"],
    "C":["Cantaloupe","Cherry","Clementine","Cloudberry","Coconut","Cranberry","Currant"],
    "D":["Damson","Date","Durian"],
    "G":["Gooseberry","Grape","Grapefruit","Guava"],
    "H":["Honeyberry","Honeydew","Huckleberry"],
    "J":["Jabuticaba","Jackfruit","Jambul","Jostaberry","Jujube"],
    "K":["Kiwifruit","Kumquat"],
    "L":["Lemon","Lime","Loganberry","Longan","Loquat","Lychee"],
    "M":["Mandarine","Mango","Mangosteen","Marionberry","Melon","Mulberry"],
    "P":["Papaya","Passionfruit","Peach","Pear","Persimmon","Pineapple","Pineberry","Plantain","Plum","Pomegranate","Pomelo"],
    "R":["Raisin","Raspberry","Redcurrant"],
    "S":["Salak","Salmonberry","Satsuma","Soursop","Strawberry"],
    "T":["Tamarillo","Tamarind","Tangelo","Tangerine","Tayberry"]
]

let animalAnswer:[String:[String]] = [
    "A":["Aardvark","Albatross","Alligator","Alpaca","Ant","Anteater","Antelope","Ape","Armadillo"],
    "B":["Baboon","Badger","Barracuda","Bat","Bear","Beaver","Bee","Binturong","Bird","Bison","Bluebird","Boar","Bobcat","Buffalo","Butterfly"],
    "C":["Camel","Capybara","Caracal","Caribou","Cassowary","Cat","Caterpillar","Cattle","Chameleon","Chamois","Cheetah","Chicken","Chimpanzee","Chinchilla","Chough","Coati","Cobra","Cockroach","Cod","Cormorant","Cougar","Coyote","Crab","Crane","Cricket","Crocodile","Crow","Cuckoo","Curlew"],
    "D":["Deer","Dhole","Dingo","Dinosaur","Dog","Dogfish","Dolphin","Donkey","Dove","Dragonfly","Duck","Dugong","Dunlin"],
    "E":["Eagle","Echidna","Eel","Eland","Elephant","Elk","Emu"],
    "F":["Falcon","Ferret","Finch","Fish","Flamingo","Fly","Fox","Frog"],
    "G":["Gaur","Gazelle","Gecko","Gerbil","Giraffe","Gnat","Gnu","Goat","Goldfinch","Goosander","Goose","Gorilla","Goshawk","Grasshopper","Grouse","Guanaco","Gull"],
    "H":["Hamster","Hare","Hawk","Hedgehog","Heron","Herring","Hippopotamus","Hoatzin","Hoopoe","Hornet","Horse","Hummingbird","Hyena"],
    "I":["Ibex","Ibis","Iguana","Impala"],
    "J":["Jackal","Jaguar","Jay","Jellyfish","Jerboa"],
    "K":["Kangaroo","Kingfisher","Kinkajou","Koala","Kookaburra","Kouprey","Kudu"],
    "L":["Lapwing","Lark","Lemur","Leopard","Lion","Lizard","Llama","Lobster","Locust","Loris","Louse","Lynx","Lyrebird"],
    "M":["Macaque","Macaw","Magpie","Mallard","Mammoth","Manatee","Mandrill","Marmoset","Marmot","Meerkat","Mink","Mole","Mongoose","Monkey","Moose","Mosquito","Mouse","Myna"],
    "N":["Narwhal","Newt","Nightingale"],
    "O":["Oxen","Octopus","Okapi","Opossum","Orangutan","Oryx","Ostrich","Otter","Owl","Oyster"],
    "P":["Panther","Parrot","Panda","Partridge","Peafowl","Penguin","Pheasant","Pig","Pigeon","Pika","Porcupine","Porpoise","Pug"],
    "Q":["Quail","Quelea","Quetzal"],
    "R":["Rabbit","Raccoon","Ram","Rat","Raven","Reindeer","Rhea","Rhinoceros","Rook"],
    "S":["Squalidae","Salamander","Salmon","Sandpiper","Sardine","Seahorse","Seal","Shark","Sheep","Shrew","Siamang","Skunk","Sloth","Snail","Snake","Spider","Squid","Squirrel","Starling","Stegosaurus","Swan"],
    "T":["Tamarin","Tapir","Tarsier","Termite","Tiger","Toad","Toucan","Turaco","Turkey","Turtle"],
    "V":["Vinegaroon","Viper","Vulture"],
    "W":["Wallaby","Walrus","Wasp","Waxwing","Weasel","Whale","Wobbegong","Wolf","Wolverine","Wombat","Woodpecker","Worm","Wren","Wapiti"]
]

enum Skills:Int
{
    case Pass = 1
    case U_turn = 2
    case Angel = 3
    case Dor = 4
    case Minus = 5
}


let skillsName:[Skills:String] = [:
    
]

let skillsDesc:[Skills:String] = [:]


