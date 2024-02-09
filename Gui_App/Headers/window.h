#pragma once
#include "../Dependancies/Includes/glad/glad.h"
#include "../Dependancies/Includes/GLFW/glfw3.h"
#include "logger.h"
#include <functional>


typedef void(*function_pointer)();

void framebuffer_size_callback(GLFWwindow* window, int width, int height)
{
    glViewport(0, 0, width, height);
} 

void error_callback(int error, const char* description)
{
    Log_err(error,description);
}

//temporary callback
static void key_callback(GLFWwindow* window, int key, int scancode, int action, int mods)
{
    if (action == GLFW_PRESS)
    {
        switch(key)
        {
            case(GLFW_KEY_ESCAPE):
            glfwSetWindowShouldClose(window , true);
            break;
            default:
            break;
        }
    }
}
class window
{
    private:
    const char* appName;
    GLFWwindow* wnd;
    public:
    window(const char* name = "",int width = 800,int height = 600)
    {
        Log_system("Opening window");
        setAppName(name);
        glfwInit();
        glfwSetErrorCallback(error_callback);
        
    }

    void createWindow(const char* name = "",int width = 800,int height = 600)
    {
        wnd = glfwCreateWindow(width, height, appName, NULL, NULL);
        if (wnd == NULL) 
        {
                Log_err(1,"Could not open window");
                glfwTerminate();
        }
        glfwMakeContextCurrent(wnd);
        gladLoadGLLoader((GLADloadproc)glfwGetProcAddress);

        
        glViewport(0, 0, 800, 600);
        glfwSetFramebufferSizeCallback(wnd, framebuffer_size_callback);
        glfwSetKeyCallback(wnd, key_callback);
    }

    void runApp(function_pointer app_callback)
    {
        while (!glfwWindowShouldClose(wnd))
        {
            app_callback();

            glfwPollEvents();
            glfwSwapBuffers(wnd);
            glClearColor(1.0f, 1.0f, 1.0f, 1.0f);
            glClear(GL_COLOR_BUFFER_BIT);
        }
    }

    ~window()
    {
        Log_system("Closing Window");
        glfwDestroyWindow(wnd);
        glfwTerminate();
    }


    inline void setLogFilter(Log_Type logType) {}
    inline const char* getAppName(){return appName;}
    inline GLFWwindow* getAppHandle(){return wnd;}
    inline void setAppName(const char* name){this->appName = name;}
};