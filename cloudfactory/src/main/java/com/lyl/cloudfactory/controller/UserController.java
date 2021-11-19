package com.lyl.cloudfactory.controller;


import com.lyl.cloudfactory.entity.*;
import com.lyl.cloudfactory.service.impl.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

@Controller
@RequestMapping("user")
public class UserController {
    @Autowired
    private UserService userService;
    @Autowired
    private FactoryService factoryService;
    @Autowired
    private AgencyService agencyService;
    @Autowired
    private OrderService orderService;
    @Autowired
    private BidService bidService;
    @Autowired
    private EquipmentService equipmentService;
    @Autowired
    private ProductService productService;
    @Autowired
    private ProductTypeService productTypeService;
    @Autowired
    private EquipmentTypeService equipmentTypeService;
    @Autowired
    private ScheduleService scheduleService;
    @RequestMapping("login")
    public String login(String account, String password, HttpSession session) {
        System.out.println(account);
        System.out.println(password);
        User user = userService.getUserByAccountAndPassword(account, password);
        System.out.println(user);
        String type = user.getType();
        session.setAttribute("UserType", type);
        if (type.equals("管理员")) {
            List<User> userList = null;
            List<Factory> factoryList = null;
            List<Agency> agencyList = null;
            List<Bid> bidList = null;
            List<Order> orderList = null;
            List<Equipment> hireEquipmentList = null;
            List<Equipment> equipmentList = null;
            List<Product> productList = null;
            List<ProductType> productTypeList = null;
            List<EquipmentType> equipmentTypeList = null;

            userList = userService.getUserList();
            factoryList = factoryService.getFactoryList();
            agencyList = agencyService.getAgencyList();

            bidList = bidService.getBidList();
            orderList = orderService.getOrderList();
            hireEquipmentList = equipmentService.getEquipmentByHireState("租用设备");
            equipmentList = equipmentService.getEquipmentList();
            productList = productService.getProductList();
            productTypeList = productTypeService.getProductList();
            equipmentTypeList = equipmentTypeService.getEquipmentTypeList();


//                    System.out.println(userList);
            session.setAttribute("userList", userList);
            session.setAttribute("factoryList", factoryList);
            session.setAttribute("agencyList", agencyList);
            session.setAttribute("bidList", bidList);
            session.setAttribute("orderList", orderList);
            session.setAttribute("hireEquipmentList", hireEquipmentList);
            session.setAttribute("equipmentList", equipmentList);
            session.setAttribute("productList", productList);
            session.setAttribute("productTypeList", productTypeList);
            session.setAttribute("equipmentTypeList", equipmentTypeList);
            return "redirect:/pages/admin.jsp";

//        冲冲冲！！！！！！
        }
        else if (type.equals("云工厂")){
            Factory factory=factoryService.getFactoryByAccount(account);
            session.setAttribute("Factory",factory);
            session.setAttribute("account",account);
            List<Order> orderList=null;
            List<Order> bidOrderList=new ArrayList<>();
            List<Bid> factoryBidList=null;
            List<Equipment> factoryEquipmentList=null;
            List<Schedule> factoryScheduleList=new ArrayList<>();
            List<Bid> factoryScheduleBidList=new ArrayList<>();
            List<EquipmentType> equipmentTypeList = null;
            equipmentTypeList = equipmentTypeService.getEquipmentTypeList();


            orderList=orderService.getOrderList();
            System.out.println(orderList);
            for (int i=0;i<orderList.size();i++){
                if (orderList.get(i).getOrderState().equals("已发布")){
                    bidOrderList.add(orderList.get(i));
                }
            }

            factoryBidList=bidService.getBidListByFactoryAccount(factory.getAccount());


            for (int i = 0; i < factoryBidList.size(); i++) {
                if (factoryBidList.get(i).getHadBidden().equals("已中标")){
                    factoryScheduleBidList.add(factoryBidList.get(i));
                }
            }



            factoryEquipmentList=equipmentService.getEquipmentListByFactoryAccount(factory.getAccount());


            System.out.println(factoryBidList);

            if (factoryBidList!=null) {
                for (int i = 0; i < factoryBidList.size(); i++) {

                    System.out.println(factoryBidList.get(i).getBidID());
                    Schedule schedule = scheduleService.getScheduleByBidID(factoryBidList.get(i).getBidID());
                    if (schedule != null) {
                        factoryScheduleList.add(schedule);
                    }
                }
            }

            session.setAttribute("bidOrderList",bidOrderList);
            session.setAttribute("orderList",orderList);

            session.setAttribute("factoryScheduleBidList",factoryScheduleBidList);
            session.setAttribute("factoryBidList",factoryBidList);
            session.setAttribute("factoryEquipmentList",factoryEquipmentList);
            session.setAttribute("factoryScheduleList",factoryScheduleList);
            session.setAttribute("equipmentTypeList", equipmentTypeList);


            return "redirect:/pages/Factory.jsp";


        }
        else if(type.equals("经销商")){
            Agency agency=agencyService.getAgencyByAccount(account);
            session.setAttribute("Agency",agency);
            session.setAttribute("account",account);
            List<Order> agencyOrderList=null;
            List<Product> productList=null;
//            把bid获取了
            List<Bid> agencyBidList=new ArrayList<>();




            agencyOrderList=orderService.getOrderListByBelongAgencyAccount(agency.getAccount());
            productList=productService.getProductList();

            System.out.println(agencyOrderList);
            System.out.println("______________");
            System.out.println(bidService.getBidList());



            for (int i = 0; i < agencyOrderList.size(); i++) {
                System.out.println("进来了");
//                我知道会有问题，但现在不解决它
                agencyBidList.addAll(bidService.getBidByOrderID(agencyOrderList.get(i).getOrderID()));

            }



//            现在的整个列表已经是数据传递完了
//            开始筛选一下子

                System.out.println("agencyBidList");
                System.out.println(agencyBidList);

            session.setAttribute("agencyOrderList",agencyOrderList);
            session.setAttribute("productList",productList);
            session.setAttribute("agencyBidList",agencyBidList);

            return "redirect:/pages/Agency.jsp";

        }
        return "redirect:/pages/admin.jsp";

    }
    @RequestMapping("operateFactory")
    public String operateFactory(String operateID, HttpSession session){
        System.out.println(operateID);
        Factory factory=factoryService.getFactoryByID(operateID);
        if (factory.getState().equals("开启")){
            factory.setState("关停");
            factoryService.updateFactory(factory);
        }else if (factory.getState().equals("关停")){
            factory.setState("开启");
            factoryService.updateFactory(factory);
            System.out.println("更新了");
        }else {
            System.out.println("该工厂状态异常，不符合设计");
            return "redirect:/pages/exception/Error404.jsp ";
        }
        System.out.println(factory);
        System.out.println(factory.getState());
        session.setAttribute("factoryList",factoryService.getFactoryList());
        return "redirect:/pages/factoryManage.jsp";
    }
    @RequestMapping("updateHireEquipmentPage")
    public String updateHireEquipment(String operateID,HttpSession session){
        Equipment equipment=equipmentService.getEquipmentByEquipmentID(operateID);
        session.setAttribute("equipment",equipment);
        return "redirect:/update/updateEquipment.jsp";
    }
    @RequestMapping("updateHireEquipment")
    public String updateHireEquipment(String equipmentID,String name,String type,String specifications,String detail,String equipmentState,String hireState, HttpSession session){
        Equipment hireEquipment=equipmentService.getEquipmentByEquipmentID(equipmentID);

        hireEquipment.setEquipmentID(equipmentID);
        hireEquipment.setEquipmentState(equipmentState);
        hireEquipment.setHireState(hireState);
        hireEquipment.setName(name);
        hireEquipment.setType("租用设备");
        hireEquipment.setSpecifications(specifications);
        hireEquipment.setDetail(detail);

        equipmentService.updateEquipment(hireEquipment);
        session.setAttribute("hireEquipmentList",equipmentService.getEquipmentByHireState("租用设备"));
        return "redirect:/pages/hireEquipmentManage.jsp";
    }
    @RequestMapping("deleteHireEquipment")
    public String deleteHireEquipment(String deleteID, HttpSession session){
        equipmentService.deleteEquipment(deleteID);
        session.setAttribute("hireEquipmentList",equipmentService.getEquipmentByHireState("租用设备"));
        return "redirect:/pages/hireEquipmentManage.jsp";



    }
    @RequestMapping("updateProduct")
    public String updateProduct(String productID,String productName,String productType,String productSpecifications,String productDetail, HttpSession session){

        System.out.println(productID);
        Product product=productService.getProductByProductID(productID);
        System.out.println(product);
        product.setProductID(productID);
        product.setProductName(productName);
        product.setProductType(productType);
        product.setProductDetail(productDetail);
        product.setProductSpecifications(productSpecifications);
        productService.updateProduct(product);
        session.setAttribute("productList", productService.getProductList());
        return "redirect:/pages/productManage.jsp";
    }
    @RequestMapping("updateProductPage")
    public String updateProductPage(String productID, HttpSession session){
        Product product=productService.getProductByProductID(productID);
        session.setAttribute("product",product);
        return "redirect:/update/updateProduct.jsp";

    }
    @RequestMapping("deleteProduct")
    public String deleteProduct(String deleteID, HttpSession session){
        System.out.println("删除产品");
        productService.deleteProductByProductID(deleteID);
        session.setAttribute("productList", productService.getProductList());
        return "redirect:/pages/productManage.jsp";
    }
    @RequestMapping("addHireEquipment")
    public String addHireEquipment(String name,String type,String specifications,String detail,String equipmentState, HttpSession session){
        String equipmentID="E"+ UUID.randomUUID().toString();
        //    所属工厂
        String belongFactoryAccount=null;
        Equipment hireEquipment=new Equipment(equipmentID,belongFactoryAccount,name,type,specifications,detail,equipmentState,"租用设备");
        equipmentService.addEquipment(hireEquipment);
        session.setAttribute("hireEquipmentList",equipmentService.getEquipmentByHireState("租用设备"));
        return "redirect:/pages/hireEquipmentManage.jsp";

    }
    @RequestMapping("addProduct")
    public String addProduct(String productName,String productType,String productSpecifications,String productDetail, HttpSession session){
        String productID="P"+UUID.randomUUID().toString();
        Product product=new Product(productID,productName,productType,productSpecifications,productDetail);
        System.out.println(product);
        productService.addProduct(product);
        session.setAttribute("productList", productService.getProductList());
        return "redirect:/pages/productManage.jsp";
    }
    @RequestMapping("searchFactoryAccount")
    public String searchFactoryAccount(String account, HttpSession session){
        List<Factory> factoryList =factoryService.getFactoryListByAccount(account);
        session.setAttribute("factoryList",factoryList);
        System.out.println(factoryList);
        return "redirect:/pages/factoryManage.jsp";
    }


}
