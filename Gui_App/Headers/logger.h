#pragma once
#include <iostream>
#include <chrono>
#include <ctime>

enum Log_Type
{
    sys = 1,
    err = 2,
    warn = 3,
    info = 4,
    all = 5,
    none = 0

};
static Log_Type filterVal;

inline Log_Type getFilterVal() {return filterVal;}

void setFilter(Log_Type filter)
{
    filterVal = filter;
}


class Log_err
{
    protected:
    unsigned int err_code;
    public:
    Log_err(unsigned int err_code ,const char* msg = "");
};

class Log_info
{
    public:
    Log_info(const char* msg = "");
};

class Log_warn
{
    public:
    Log_warn(const char* msg ="");
};

class Log_system
{
    public:
    Log_system(const char* msg = "");
};



//definitions

Log_err::Log_err(unsigned int err_code,const char* msg)
{
    if (getFilterVal()> err)
    {
        this->err_code = err_code;

        std::cout << "\033[1;31m [ERROR] \033[0m";

        std::cout<<err_code<<": "<<msg<<std::endl;
    }
    
}

Log_info::Log_info(const char* msg)
{
    if(getFilterVal()> info)
    {
        std::cout << "\033[1;32m [INFO] \033[0m";

        std::cout<<": "<<msg<<std::endl;
    }
}

Log_warn::Log_warn(const char* msg)
{
    if(getFilterVal()> warn)
    {
        std::cout << "\033[1;33m [WARNING] \033[0m";

        std::cout<<": "<<msg<<std::endl;
    }
}   

Log_system::Log_system(const char* msg)
{
    if(getFilterVal()> sys)
    {
        auto current_time = std::chrono::system_clock::now();
        std::time_t time = std::chrono::system_clock::to_time_t(current_time);

        std::tm* localTime = std::localtime(&time);

        // Format and display the current time
        char timeBuffer[100];
        std::strftime(timeBuffer, sizeof(timeBuffer), "---  %Y,%m,%d  %H:%M:%S  ---]", localTime);


        std::cout << "\033[1;42m [SYSTEM "<<timeBuffer<<"\033[0m";

        std::cout<<": "<<msg<<std::endl;
    }
}