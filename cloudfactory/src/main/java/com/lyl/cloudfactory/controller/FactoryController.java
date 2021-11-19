package com.lyl.cloudfactory.controller;

import com.lyl.cloudfactory.entity.Bid;
import com.lyl.cloudfactory.entity.Equipment;
import com.lyl.cloudfactory.entity.Factory;
import com.lyl.cloudfactory.entity.Schedule;
import com.lyl.cloudfactory.service.impl.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import java.util.List;
import java.util.UUID;

@Controller
@RequestMapping("factory")
public class FactoryController {
    @Autowired
    private FactoryService factoryService;
    @Autowired
    private OrderService orderService;
    @Autowired
    private BidService bidService;
    @Autowired
    private EquipmentService equipmentService;
    @Autowired
    private EquipmentTypeService equipmentTypeService;
    @Autowired
    private ScheduleService scheduleService;
    @RequestMapping("updateEquipmentPage")
    public String updateHireEquipment(String operateID,HttpSession session){
        Equipment equipment=equipmentService.getEquipmentByEquipmentID(operateID);
        session.setAttribute("factoryEquipment",equipment);
        return "redirect:/update/updateFactoryEquipment.jsp";
    }
    @RequestMapping("updateEquipment")
    public String updateHireEquipment(String equipmentID,String name,String type,String specifications,String detail,String equipmentState,String hireState, HttpSession session){
        Equipment equipment=equipmentService.getEquipmentByEquipmentID(equipmentID);

        equipment.setEquipmentID(equipmentID);
        equipment.setEquipmentState(equipmentState);
        equipment.setHireState(hireState);
        equipment.setName(name);
        equipment.setType("自有设备");
        equipment.setSpecifications(specifications);
        equipment.setDetail(detail);

        equipmentService.updateEquipment(equipment);

        System.out.println(session.getAttribute("account"));
        String factoryAccount= (String) session.getAttribute("account");
        System.out.println("这是怎么了啊");
        session.setAttribute("factoryEquipmentList",equipmentService.getEquipmentListByFactoryAccount(factoryAccount));
        System.out.println("什么情况");
        return "redirect:/pages/FactoryEquipmentManage.jsp";
    }
    @RequestMapping("deleteEquipment")
    public String deleteEquipment(String deleteID, HttpSession session){
       String account= (String) session.getAttribute("account");
        equipmentService.deleteEquipment(deleteID);
        session.setAttribute("factoryEquipmentList",equipmentService.getEquipmentListByFactoryAccount(account));
        System.out.println("怎么搞的");
        return "redirect:/pages/FactoryEquipmentManage.jsp";
    }
    @RequestMapping("scheduleManage")
    public String scheduleManage(String equipmentID,String startTime,String endTime, HttpSession session){
       String bidID= (String) session.getAttribute("bidID");
        System.out.println("bidID 是");
        System.out.println(bidID);
        Bid bid= bidService.getBidByBidID(bidID);
        bid.setHadBidden("已完成");
//        这个到时候把文字改一改
        Schedule schedule=new Schedule();

            schedule.setBidID(bidID);
            schedule.setEquipmentID(equipmentID);
            schedule.setStartTime(startTime);
            schedule.setEndTime(endTime);

        System.out.println(schedule);
        System.out.println("什么问题");
        scheduleService.addSchedule(schedule);
        List<Schedule>scheduleList=scheduleService.getScheduleList();
        session.setAttribute("scheduleList",scheduleList);
//        set了整个的，但是我并没有异步更新它

        return "redirect:/pages/FactoryScheduleManage.jsp";
    }
    @RequestMapping("scheduleManagePage")
    public String scheduleManagePage(String bidID,HttpSession session){
        session.setAttribute("bidID",bidID);
        return "redirect:/update/scheduleManage.jsp";

    }
    @RequestMapping("orderBidPage")
    public String orderBidPage(String orderID,HttpSession session){
        session.setAttribute("orderID",orderID);
        return "redirect:/update/orderBid.jsp";
    }
    @RequestMapping("orderBid")
    public String orderBid(int bidPrice,HttpSession session){
        String account= (String) session.getAttribute("account");
        System.out.println(account);
        String orderID= (String) session.getAttribute("orderID");
        String bidID= "B"+UUID.randomUUID();
        Factory factory= factoryService.getFactoryByAccount(account);
        String contact= factory.getContact();
        String principal= factory.getPrincipal();
        Bid bid=new Bid();
        bid.setOrderID(orderID);
        bid.setBidID(bidID);
        bid.setBidFactroyAccount(account);
        bid.setBidPrice(bidPrice);
//        就是还没选标呢，还没结束呢
        bid.setHadBidden("已投标");
        bid.setFactoryPrincipal(principal);
        bid.setFactoryContact(contact);

        bidService.updateBid(bid);
        List<Bid>bidList=bidService.getBidList();
        session.setAttribute("bidList",bidList);
//        这里还有个工厂的没有更新嘛？


        List<Bid> factoryBidList=null;
        factoryBidList=bidService.getBidListByFactoryAccount(factory.getAccount());
        session.setAttribute("factoryBidList",factoryBidList);
        return "redirect:/pages/FactoryOrderBid.jsp";
    }
    @RequestMapping("addEquipment")
    public String addEquipment(String name,String type,String specifications,String detail,String equipmentState, HttpSession session){
        String equipmentID="E"+ UUID.randomUUID().toString();
        //    所属工厂
        String belongFactoryAccount= (String) session.getAttribute("account");
        System.out.println(belongFactoryAccount);
        Equipment equipment=new Equipment(equipmentID,belongFactoryAccount,name,type,specifications,detail,equipmentState,"租用设备");
        equipmentService.addEquipment(equipment);
        session.setAttribute("equipment",equipmentService.getEquipmentByHireState("自用设备"));
        session.setAttribute("factoryEquipmentList",equipmentService.getEquipmentListByFactoryAccount(belongFactoryAccount));


        return "redirect:/pages/FactoryEquipmentManage.jsp";

    }

}
