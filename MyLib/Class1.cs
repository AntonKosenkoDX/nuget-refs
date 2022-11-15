using MyUtilities;

namespace MyLib;

// All the code in this file is included in all platforms.
public class Class1
{
    public void MyMethod(){
        var test = new MyUtilities.Class1();
        test.SomeMethod();
    }
}

public class Class2 : MyUtilities.Class1 {
    
}
