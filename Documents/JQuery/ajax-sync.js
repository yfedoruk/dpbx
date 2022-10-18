http://bugs.jquery.com/ticket/11013#comment:40

The use of the Deferred/Promise functionality in synchronous ajax requests has been deprecated in 1.8. The $.ajax method with async: false is supported but you must use a callback parameter rather than a Promise method such as .then or .done.
So, if you are using the success/complete/error handlers, you can still use async:false. 