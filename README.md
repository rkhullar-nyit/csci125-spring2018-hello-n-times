## Instructions

### clone the repo
1. Copy your repository url to the clipboard.
2. Open intellij and select checkout from version control.
3. Select the git option and paste the url.
4. Configure your project directory and name.

### setup tests
Open the terminal from intellij and run the following command.
``` sh
./setup.sh
```

### project layout
Your project should have two folders with the following content.
``` sh
.
├── src
│   └── Hello.java
└── tests
    ├── HelloTest.java
    └── TestRunner.java
```

### write the code
Complete the __hello__ method in ```src/Hello.java``` so that it prints out a message multiple times.
The __message__ and __count__ are parameters to the method.

### test the code
The __main__ method invokes the __hello__ method with given parameters.
When you compile and run the __Hello__ class, the main method executes.
The following shows an example method call with its expected output.

#### invocation
``` java
hello("some message", 2);
```

#### output
``` sh
some message
some message
```

Run the __HelloTest__ class in ```tests/HelloTest.java``` to make sure your code is correct.
You can also run __TestRunner__ to estimate the grade for your project.

### push the code
Remember to push you code to GitHub!
``` sh
git add .
git commit -m "your commit message"
git push
````

### double check
The tests may update when you push or pull your project. After pushing your code run the following command.
``` sh
git status
```
If you see that ```tests``` has been modified, then rerun your tests to make sure they all pass, and then update your project again.

## Notes
The tests directory actually references another repository. When you cloned the repo the directory was actually empty.
The setup script downloaded the appropriate files and installed hooks to keep them up to date. Whenever the project is updated with ```git pull``` or ```git push``` the tests directory will also update.

Without the setup script you could do the following:
``` sh
# after cloning the repo
git submodule init
git submodule update --remote
```

``` sh
# checking for updates
git submodule update --remote
git status
# if status shows modified tests
git commit -am "updating tests"
```
