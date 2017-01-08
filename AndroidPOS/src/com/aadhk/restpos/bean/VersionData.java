// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.bean;

import java.util.List;
import java.util.Map;

// Referenced classes of package com.aadhk.restpos.bean:
//            Company

public class VersionData
{

    private List categoryList;
    private Company company;
    private List currencyList;
    private List customerList;
    private List discountList;
    private List itemList;
    private List kitchenNoteGroupList;
    private List kitchenNoteList;
    private List modifierGroupList;
    private List modifierList;
    private List noteList;
    private List paymentMethodList;
    private List priceScheduleList;
    private List printerList;
    private List rolePermissionList;
    private List serviceFeeList;
    private List tableList;
    private List userList;
    private Map versioMap;

    public VersionData()
    {
    }

    public List getCategoryList()
    {
        return categoryList;
    }

    public Company getCompany()
    {
        return company;
    }

    public List getCurrencyList()
    {
        return currencyList;
    }

    public List getCustomerList()
    {
        return customerList;
    }

    public List getDiscountList()
    {
        return discountList;
    }

    public List getItemList()
    {
        return itemList;
    }

    public List getKitchenNoteGroupList()
    {
        return kitchenNoteGroupList;
    }

    public List getKitchenNoteList()
    {
        return kitchenNoteList;
    }

    public List getModifierGroupList()
    {
        return modifierGroupList;
    }

    public List getModifierList()
    {
        return modifierList;
    }

    public List getNoteList()
    {
        return noteList;
    }

    public List getPaymentMethodList()
    {
        return paymentMethodList;
    }

    public List getPriceScheduleList()
    {
        return priceScheduleList;
    }

    public List getPrinterList()
    {
        return printerList;
    }

    public List getRolePermissionList()
    {
        return rolePermissionList;
    }

    public List getServiceFeeList()
    {
        return serviceFeeList;
    }

    public List getTableList()
    {
        return tableList;
    }

    public List getUserList()
    {
        return userList;
    }

    public Map getVersioMap()
    {
        return versioMap;
    }

    public void setCategoryList(List list)
    {
        categoryList = list;
    }

    public void setCompany(Company company1)
    {
        company = company1;
    }

    public void setCurrencyList(List list)
    {
        currencyList = list;
    }

    public void setCustomerList(List list)
    {
        customerList = list;
    }

    public void setDiscountList(List list)
    {
        discountList = list;
    }

    public void setItemList(List list)
    {
        itemList = list;
    }

    public void setKitchenNoteGroupList(List list)
    {
        kitchenNoteGroupList = list;
    }

    public void setKitchenNoteList(List list)
    {
        kitchenNoteList = list;
    }

    public void setModifierGroupList(List list)
    {
        modifierGroupList = list;
    }

    public void setModifierList(List list)
    {
        modifierList = list;
    }

    public void setNoteList(List list)
    {
        noteList = list;
    }

    public void setPaymentMethodList(List list)
    {
        paymentMethodList = list;
    }

    public void setPriceScheduleList(List list)
    {
        priceScheduleList = list;
    }

    public void setPrinterList(List list)
    {
        printerList = list;
    }

    public void setRolePermissionList(List list)
    {
        rolePermissionList = list;
    }

    public void setServiceFeeList(List list)
    {
        serviceFeeList = list;
    }

    public void setTableList(List list)
    {
        tableList = list;
    }

    public void setUserList(List list)
    {
        userList = list;
    }

    public void setVersioMap(Map map)
    {
        versioMap = map;
    }

    public final String toString()
    {
        return (new StringBuilder("VersionData [versioMap=")).append(versioMap).append(", tableList=").append(tableList).append(", categoryList=").append(categoryList).append(", itemList=").append(itemList).append(", modifierGroupList=").append(modifierGroupList).append(", modifierList=").append(modifierList).append(", company=").append(company).append(", userList=").append(userList).append(", customerList=").append(customerList).append(", currencyList=").append(currencyList).append(", rolePermissionList=").append(rolePermissionList).append(", printerList=").append(printerList).append(", kitchenNoteGroupList=").append(kitchenNoteGroupList).append(", kitchenNoteList=").append(kitchenNoteList).append(", priceScheduleList=").append(priceScheduleList).append(", discountList=").append(discountList).append(", noteList=").append(noteList).append(", paymentMethodList=").append(paymentMethodList).append(", serviceFeeList=").append(serviceFeeList).append("]").toString();
    }
}
