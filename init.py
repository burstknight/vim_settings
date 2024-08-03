from os import system
from os.path import join
from shutil import copyfile, copytree, rmtree
from pathlib import Path
import platform

class myVimInstaller:
    def __init__(self):
        self.__m_sPlatform = platform.system()
        self.__m_dctPackages = {}
        self.__m_dctPackages["Windows"] = ["main/make", "main/cmake", "main/nodejs", "main/yarn", "main/clangd", "main/gcc", "main/gdb"]
    # End of constructor

    def __installPackage(self):
        strCmd = ""
        if "Windows" == self.__m_sPlatform:
            strCmd = "scoop install"
            system("scoop bucket add main")
        # End of if-condition

        print("The packages will be installed into the computer:")
        for strPackage in self.__m_dctPackages.get(self.__m_sPlatform):
            print("* %s" %(strPackage))
            strCmd = strCmd + " " + strPackage
        # End of for-loop

        sUserCheck = input("Do you want to install? (y/n) ")
        if sUserCheck in ("Y", "y"):
            system(strCmd)
        # End of if-condition
    # End of myVimInstaller::__installPackage

    def run(self):
        self.__installPackage()

        system("curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim")
        copyfile(".vimrc", join(Path.home(), ".vimrc"))
    # End of run
# End of class myVimInstaller

def main():
    oInstaller = myVimInstaller()
    oInstaller.run()
# End of main

if "__main__" == __name__:
    main()
# End of if-condition
