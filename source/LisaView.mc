//!
//! Copyright 2015 by Garmin Ltd. or its subsidiaries.
//! Subject to Garmin SDK License Agreement and Wearables
//! Application Developer Agreement.
//!

using Toybox.System as Sys;
using Toybox.WatchUi as Ui;
using Toybox.Graphics as Gfx;
using Toybox.Time as Time;
using Toybox.Time.Gregorian as Calendar;

class LisaView extends Ui.WatchFace {

    function initialize() {
        WatchFace.initialize({});
    }

    //! Load your resources here
    function onLayout(dc) {
    }

    //! Restore the state of the app and prepare the view to be shown
    function onShow() {
    }

    //! Update the view
    function onUpdate(dc) {
        // Call the parent onUpdate function to redraw the layout
        View.onUpdate(dc);

        Sys.println("tommy1");
        var width = dc.getWidth();
        var height = dc.getHeight();
        Sys.println("tommy2");

        var dimensions = Lang.format("width = $1$, height = $2$", [width, height]);
        Sys.println(dimensions);

        // Clear the screen
        dc.setColor(Gfx.COLOR_RED, Gfx.COLOR_BLUE);
        dc.fillRectangle(0,0, width, height);
        Sys.println("tommy3");

    }
}
