# pip install robotremoteserver
import os
from robotremoteserver import RobotRemoteServer


class OwnLibrary:
    def get_os_name(self):
        return os.name


RobotRemoteServer(OwnLibrary(), host='0.0.0.0', port=5005)
