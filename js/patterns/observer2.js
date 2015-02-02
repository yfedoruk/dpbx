function l(x){ console.log(x); };

var Observable = function(){
    this.subscribers = [];
}

Observable.prototype = {
    subscribe : function(fn){
	this.subscribers.push(fn);
    },
    unsubscribe : function(fn){
	/*var s = this.subscribers;
	this.subscribers.forEach(function(v,k){
	    if(v === fn){
		s.splice(k,1);
	    }
	});
	this.subscribers = s;*/
	this.subscribers = this.subscribers.filter(function(e){
	    if(e !== fn){
		return e;
	    }
	});
    },
    publish : function(data){
	var i = 0;
	while(i < this.subscribers.length){
	    this.subscribers[i](data);
	    i++;
	}
    }
};

var Observer1 = function(x){
    l(x);
}

var Observer2 = function(x){
    l(x);
}

observable = new Observable();
observable.subscribe(Observer1);
observable.publish('Hello world1!');

observable.subscribe(Observer2);
observable.publish('Hello world2!');

observable.unsubscribe(Observer1);
observable.publish('Hello world3!');
