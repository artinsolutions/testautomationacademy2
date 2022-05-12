class KeywordClass:
    def __init__(self, var):
        self.var = var
        print("init of class")

    def my_own_keyword(self):
        print(self.var)
        print("my own keyword")

    def my_class_keyword(self, sdfdasfasd):
        # [Arguments]  ${sdfdasfasd}
        print(sdfdasfasd)

    def my_class_kw_2(self, a, b, c):
        print(a, b, c)
