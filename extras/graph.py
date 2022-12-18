import colorama


# A slope-intercept form
# y=mx+b
class SlopeIntercept:

    def __init__(self, slope: int, intercept: int) -> None:
        self.slope = slope
        self.intercept = intercept

    def getY(self, x: int):
        return self.slope * x + self.intercept

    def formatNice(self, x: int):
        return "(" + str(x) + ", " + str(self.getY(x)) + ")"

    def getEq(self):
        return "y = " + str(self.slope) + "x + " + str(self.intercept)


# y = 7x + 3
example1 = SlopeIntercept(7, 3)
print(colorama.Style.BRIGHT + colorama.Fore.LIGHTRED_EX + "form - " + colorama.Style.RESET_ALL +
      example1.getEq())
for i in range(10):
  print(colorama.Style.BRIGHT + colorama.Fore.BLUE + "when X is {}: ".format(i) + example1.formatNice(i) +
        colorama.Style.RESET_ALL)
