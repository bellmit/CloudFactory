package com.lyl.cloudfactory.entity;

//订单排产
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
public class Schedule {
    String bidID;
    String equipmentID;
    String startTime;
    String endTime;

}
