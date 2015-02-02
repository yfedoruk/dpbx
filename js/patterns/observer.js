function l(x){ console.log(x); };
var Observable = function(){
    this.subscriber;
}
Observable.prototype = {
    subscribe : function(x){
        this.subscriber = x;
    },
    publish : function(data){
        this.subscriber(data);
    }
};
var Observer = function(x){
    console.log(x);
}

observable = new Observable();
l(observable);
observable.subscribe(Observer);
observable.publish("Hello World!");


