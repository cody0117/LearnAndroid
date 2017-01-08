// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package au.com.bytecode.opencsv.bean;

import au.com.bytecode.opencsv.CSVReader;
import java.beans.PropertyDescriptor;
import java.beans.PropertyEditor;
import java.beans.PropertyEditorManager;
import java.io.Reader;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

// Referenced classes of package au.com.bytecode.opencsv.bean:
//            MappingStrategy

public class CsvToBean
{

    private Map editorMap;

    public CsvToBean()
    {
        editorMap = null;
    }

    private void addEditorToMap(Class class1, PropertyEditor propertyeditor)
    {
        if (propertyeditor != null)
        {
            editorMap.put(class1, propertyeditor);
        }
    }

    private String checkForTrim(String s, PropertyDescriptor propertydescriptor)
    {
        if (trimmableProperty(propertydescriptor))
        {
            s = s.trim();
        }
        return s;
    }

    private PropertyEditor getPropertyEditorValue(Class class1)
    {
        if (editorMap == null)
        {
            editorMap = new HashMap();
        }
        PropertyEditor propertyeditor = (PropertyEditor)editorMap.get(class1);
        if (propertyeditor == null)
        {
            propertyeditor = PropertyEditorManager.findEditor(class1);
            addEditorToMap(class1, propertyeditor);
        }
        return propertyeditor;
    }

    private boolean trimmableProperty(PropertyDescriptor propertydescriptor)
    {
        return !propertydescriptor.getPropertyType().getName().contains("String");
    }

    protected Object convertValue(String s, PropertyDescriptor propertydescriptor)
    {
        PropertyEditor propertyeditor = getPropertyEditor(propertydescriptor);
        if (propertyeditor != null)
        {
            propertyeditor.setAsText(s);
            s = ((String) (propertyeditor.getValue()));
        }
        return s;
    }

    protected PropertyEditor getPropertyEditor(PropertyDescriptor propertydescriptor)
    {
        Class class1 = propertydescriptor.getPropertyEditorClass();
        if (class1 != null)
        {
            return (PropertyEditor)class1.newInstance();
        } else
        {
            return getPropertyEditorValue(propertydescriptor.getPropertyType());
        }
    }

    public List parse(MappingStrategy mappingstrategy, CSVReader csvreader)
    {
        ArrayList arraylist;
        mappingstrategy.captureHeader(csvreader);
        arraylist = new ArrayList();
_L1:
        String as[] = csvreader.readNext();
        if (as != null)
        {
            try
            {
                arraylist.add(processLine(mappingstrategy, as));
            }
            catch (Exception exception)
            {
                throw new RuntimeException("Error parsing CSV!", exception);
            }
        } else
        {
            return arraylist;
        }
          goto _L1
    }

    public List parse(MappingStrategy mappingstrategy, Reader reader)
    {
        return parse(mappingstrategy, new CSVReader(reader));
    }

    protected Object processLine(MappingStrategy mappingstrategy, String as[])
    {
        Object obj = mappingstrategy.createBean();
        for (int i = 0; i < as.length; i++)
        {
            PropertyDescriptor propertydescriptor = mappingstrategy.findDescriptor(i);
            if (propertydescriptor != null)
            {
                Object obj1 = convertValue(checkForTrim(as[i], propertydescriptor), propertydescriptor);
                propertydescriptor.getWriteMethod().invoke(obj, new Object[] {
                    obj1
                });
            }
        }

        return obj;
    }
}
