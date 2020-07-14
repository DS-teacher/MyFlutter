# 基于Android平台的单子点餐系统
+ Start@2020.5.10
+ Update@2020.7.10
+ 董天宇-2017214203
## 项目环境
+ MySQL 8.0.17
+ Springboot 2.2.5
+ IntelliJ IDEA 2019.3
## 系统需求
+ 为某饭店开发的基于android的点餐系统。该系统运行在饭店提供的Android平板电脑(手机)。设备为每桌配置一台，使时刻可以及时了解当前就餐情况
## 主要功能及流程
+ 服务员：
  + 食客进入饭店后，由服务员拿出一部设备，登录(由此服务员服务，用于后期统计绩效，追责等)，根据用餐人数，当前台桌可用状态开台，换台，撤台等
  + 查看当前各台状态信息
+ 利用jpa建立实体类，完成数据库的映射
 + 教师：   
        1. 登录，导入多门课程excel表格     
        2. 为课程设置加权分数    
        3. 设置实际指导学生数    
        4. 设置加权后，有资格学生范围    
        5. 查看当前已接收学生    
        6. 各参数可修改   
        7. 设置毕设方向，设置毕设方向权值
 + 学生：   
        1.输入学号显示曾经选修课程  
        2.提交    
        3.匹配    
        4.达到最大数关闭提交  
        5.后台并发判断   
