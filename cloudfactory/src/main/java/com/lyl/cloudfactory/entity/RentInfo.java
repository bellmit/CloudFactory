package com.lyl.cloudfactory.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;
import lombok.experimental.Accessors;

@Data
@ToString
@NoArgsConstructor
@AllArgsConstructor
@Accessors(chain = true)
public class RentInfo {
    String rentID;
    String equipmentID;
    String factoryAccount;
    String hireDate;
    String hireDuration;


}
