using Toybox.Application as App;
using Toybox.System;

class HelloWorld extends App.AppBase 
{

    // onStart() is called on appliappcation start up
    function onStart(state) 
    {
    }

    // onStop() is called when appn is exiting
    function onStop(state) 
    {
    
    }

    // Return the initial view of app here
    function getInitialView() 
    {
        return [ new HelloWorldView() ];
    }
}