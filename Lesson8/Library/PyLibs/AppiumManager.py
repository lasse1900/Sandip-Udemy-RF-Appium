import subprocess
from time import sleep


class AppiumManager:
    Init_Server_Port = 4723
    Server_Info_Map = {}

    @staticmethod
    def start_appium_server(suite_name, device_id=None):
        curr_port = AppiumManager.Init_Server_Port
        appium_arg_string = "-p " + str(curr_port) + " -bp " + str(curr_port + 1)
        AppiumManager.Init_Server_Port = AppiumManager.Init_Server_Port + 5
        if device_id:
            appium_arg_string = appium_arg_string + " -U " + str(device_id)

        print("Starting Appium Server For Suite -" + suite_name + " , Args : " + appium_arg_string)
        appium_server_proc = subprocess.Popen(["appium", appium_arg_string], stdout=subprocess.DEVNULL, shell=True)
        AppiumManager.Server_Info_Map[suite_name] = appium_server_proc
        # NOTE : wait for 5 sec to start the appium server properly #
        sleep(5)
        return curr_port

    @staticmethod
    def kill_appium_server(suite_name):
        print("Stopping Appium Server For Suite - " + str(suite_name))
        appium_server_proc = AppiumManager.Server_Info_Map[suite_name]
        appium_server_proc.terminate()

