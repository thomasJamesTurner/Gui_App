#include "../Headers/window.h"

void updateWindow()                         //calback function for app loop, must be declared above main
{
    Log_info("application is running");
}

int main ()
{
    setFilter(all);
    window* app = new window;
    app->createWindow("example window");
    app->runApp(updateWindow);              // app loop callback to be repeated each frame
    Log_info("better go catch it");
    delete app;
    
}

