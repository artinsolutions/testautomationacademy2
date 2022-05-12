from robot.libraries.BuiltIn import BuiltIn
from robot.libraries.OperatingSystem import OperatingSystem


def upload_file_own(xpath: str, file_: str) -> None:
    """ Uploads a file to specified file input. If there is not specified xpath, use:  self.locator.file_input.
    Otherwise you can rewrite xpath to specific one!

    :param file_: path to file to upload. File path will be normalized
    :param xpath: xpath to use
    :return:
    """
    selib = BuiltIn().get_library_instance("SeleniumLibrary")
    fileinput = selib.get_webelement(xpath)
    selib.driver.execute_script("arguments[0].style.display = 'block';", fileinput)
    selib.driver.execute_script("arguments[0].removeAttribute('style');", fileinput)
    file_ = OperatingSystem().normalize_path(file_)
    selib.input_text(xpath, file_)
