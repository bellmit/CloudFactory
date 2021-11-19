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
public class Equipment {
    //    设备编号 自动生成
    private String equipmentID;
    //    所属工厂
    private String belongFactoryAccount;
    //    设备名称
    private String name;
    //    设备类型
    private String type;

    //    设备规格
    private String specifications;
    //    设备描述
    private String detail;
    //    设备状态
    private String equipmentState;
    //    租用状态 可以为空
    private String hireState;


}