package utilities;

import java.util.ArrayList;

public class ValidationUtil
{    
    public static boolean hasEmptyField(ArrayList<String> fields)
    {
        boolean hasEmptyFields = false;
        
        for (int i=0; i<fields.size();i++)
        {
            if(fields.get(i).isEmpty())
                hasEmptyFields = true;
        }
        
        return hasEmptyFields;
    }
}