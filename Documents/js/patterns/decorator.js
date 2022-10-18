function l(x){console.log(x);}
var Vehicle = function(x){
    this.type = x || 'car';
    this.model = 'default';
    this.license = '00-00-00';
    this.price1 = function(){ return 1000; };
    this.price = 1000;
}
Vehicle.prototype =  {
	price2 : function(){return 123; }
    }

var truck = new Vehicle('truck');
l( truck.price2());


truck.setModel = function(m){
    this.model = m;
}

truck.setColor = function(c){
    this.color = c;
}
truck.setColor('blue');

// example 2
tuning = function(car){
    car.price += 100;
    return car.price;
}
tuning(truck);
l(truck);


// Example 3

var User = function(n){
    this.name = n;
    this.say = function(){
	l('hello ' + this.name);
    }
}
var us1 = new User('Vasia');
l(us1);

var UserDecorator = function(user, age){
    this.name = user.name;
    this.age = age;
    this.say = function(){
	l('Decorated hello' + this.age);
    }
}

var us1d = new UserDecorator(us1, 34);
us1d.say();
l(us1d);

var us2 = new User('Kolya');
l(us2);
