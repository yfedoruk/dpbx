/*
 * http://www.rgagnon.com/topics/js-language.html
 * get current page name
 * 
**/
    var sPath = window.location.pathname;
    //var sPage = sPath.substring(sPath.lastIndexOf('\\') + 1);
    var sPage = sPath.substring(sPath.lastIndexOf('/') + 1);