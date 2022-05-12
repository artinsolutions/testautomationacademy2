import ast
from robot.libraries.BuiltIn import BuiltIn


def execute_cdp(command: str, arg: str) -> None:
    """ Executes remote CDP command

    Example:
    | Execute CDP | Page.capturePageScreenshot | {} |
    | ${res} | Execute CDP | Target.getTargets | {} |
    | ${res} | Execute CDP | Network.emulateNetworkConditions | {"offline": True, "latency": 0, "downloadThroughput": 0, "uploadThroughput": 0} |
    | ${res} | Execute CDP | Network.emulateNetworkConditions | {"connectionType": "3g"} |
    """
    selib = BuiltIn().get_library_instance("SeleniumLibrary")
    d_arg = ast.literal_eval(arg)
    res = selib.driver.execute_cdp_cmd(command, d_arg)
    BuiltIn().log(f"execute_cdp >> Res: {res}")
