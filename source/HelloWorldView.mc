using Toybox.Graphics as Gfx;
using Toybox.WatchUi as Ui;

class HelloWorldView extends Ui.View 
{
    function initialize() 
    {
        View.initialize();
    }

    //! Update the view
    function onUpdate(dc) 
    {
        dc.setColor(Gfx.COLOR_WHITE, Gfx.COLOR_BLUE);
        dc.clear();

        var height = dc.getHeight();
        var width = dc.getWidth();

        dc.drawText(width / 2, height / 2 - dc.getFontHeight(Gfx.FONT_LARGE),
            Gfx.FONT_LARGE, "Hello World", Gfx.TEXT_JUSTIFY_CENTER);
    }
}