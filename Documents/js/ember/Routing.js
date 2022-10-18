function l(x){ console.log(x); }

App = Ember.Application.create();
App.Router.map( function(){
    this.route( 'about', {path: '/abt'} );                  // www.ember.loc/#/abt
    this.resource('user' , {path: '/user/:uid'}, function(){            //ember.loc/#/user/23
	    this.route('phone', {path: '/phs/:phone_id' } );            //ember.loc/#/user/23/phs/123
	    this.resource('info', function() {
		this.route('name', {path: '/nm' } );               //ember.loc/#/user/123/info/nm
	    });
        });
} );
App.AboutRoute = Ember.Route.extend({
	renderTemplate: function(){
	    this.render('about2');                      //<script type="text/x-handlebars"  data-template-name="about2">  hello2! </script>
	},
        model: function() {
            l('about???');
	}
});

App.UserRoute = Ember.Route.extend({
    model:function(){
	l('UserRoute');
    }
});
App.UserPhoneRoute = Ember.Route.extend({
    model:function(x){
	l('UserPhoneRoute');  
	l(x.phone_id);
    }
});
App.InfoRoute = Ember.Route.extend({
    model: function() {
	l('InfoRoute');
    }
});
App.InfoNameRoute = Ember.Route.extend({
    model: function() {
	l('InfoNameRoute');
    }
});
