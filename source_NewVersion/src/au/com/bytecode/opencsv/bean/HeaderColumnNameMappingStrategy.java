// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package au.com.bytecode.opencsv.bean;

import au.com.bytecode.opencsv.CSVReader;
import java.beans.BeanInfo;
import java.beans.Introspector;
import java.beans.PropertyDescriptor;
import java.util.HashMap;
import java.util.Map;

// Referenced classes of package au.com.bytecode.opencsv.bean:
//            MappingStrategy

public class HeaderColumnNameMappingStrategy
    implements MappingStrategy
{

    protected Map descriptorMap;
    protected String header[];
    protected Class type;

    public HeaderColumnNameMappingStrategy()
    {
        descriptorMap = null;
    }

    private PropertyDescriptor[] loadDescriptors(Class class1)
    {
        return Introspector.getBeanInfo(class1).getPropertyDescriptors();
    }

    public void captureHeader(CSVReader csvreader)
    {
        header = csvreader.readNext();
    }

    public Object createBean()
    {
        return type.newInstance();
    }

    public PropertyDescriptor findDescriptor(int i)
    {
        String s = getColumnName(i);
        if (s != null && s.trim().length() > 0)
        {
            return findDescriptor(s);
        } else
        {
            return null;
        }
    }

    protected PropertyDescriptor findDescriptor(String s)
    {
        if (descriptorMap == null)
        {
            descriptorMap = loadDescriptorMap(getType());
        }
        return (PropertyDescriptor)descriptorMap.get(s.toUpperCase().trim());
    }

    protected String getColumnName(int i)
    {
        if (header != null && i < header.length)
        {
            return header[i];
        } else
        {
            return null;
        }
    }

    public Class getType()
    {
        return type;
    }

    protected Map loadDescriptorMap(Class class1)
    {
        HashMap hashmap = new HashMap();
        PropertyDescriptor apropertydescriptor[] = loadDescriptors(getType());
        int i = apropertydescriptor.length;
        for (int j = 0; j < i; j++)
        {
            PropertyDescriptor propertydescriptor = apropertydescriptor[j];
            hashmap.put(propertydescriptor.getName().toUpperCase().trim(), propertydescriptor);
        }

        return hashmap;
    }

    protected boolean matches(String s, PropertyDescriptor propertydescriptor)
    {
        return propertydescriptor.getName().equals(s.trim());
    }

    public void setType(Class class1)
    {
        type = class1;
    }
}
