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
public class EquipmentCapacity {
    String equipmentID;
    String productID;
//    产能
    String capcacity;


}
