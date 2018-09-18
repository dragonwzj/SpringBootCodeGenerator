<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>SQL转Java JPA、MYBATIS实现类代码生成平台</title>
    <meta name="keywords" content="sql转实体类,sql转DAO,SQL转service,SQL转JPA实现,SQL转MYBATIS实现">
    <#import "common/common-import.ftl" as netCommon>
    <@netCommon.commonStyle />

    <@netCommon.commonScript />
    <script src="${request.contextPath}/static/js/index-new.js"></script>
<#--
    <li role="presentation"><a href="http://blog.csdn.net/moshowgame">大狼狗CSDN</a></li>
    <li role="presentation"><a href="http://github.com/moshowgame/SpringBootCodeGenerator">GitHub</a></li>-->
</head>
<body style="background-color: #e9ecef">

    <div class="container">
        <nav class="navbar navbar-dark bg-primary">
            <a class="navbar-brand" href="http://www.bejson.com">BeJSON在线工具站</a>
            <ul class="nav navbar-nav">
                <li class="nav-item active">
                    <a class="nav-link" href="http://blog.csdn.net/moshowgame">大狼狗CSDN</a>
                </li>
            </ul>
        </nav>
    </div>

<!-- Main jumbotron for a primary marketing message or call to action -->
<div class="jumbotron">
    <div class="container">
        <h1>Spring Boot Code Generator!</h1>
        <p>基于<code>SpringBoot2</code>+<code>xxl-codegenerator</code>的代码生成器。用DDL语句生成<code>JPA</code>/<code>JdbcTemplate</code>/<code>Mybatis</code>相关代码，目前以<code>JPA</code>的为主，各大<code>模板</code>也在陆续优化。如果发现有SQL语句不能识别，请<a href="https://github.com/moshowgame/SpringBootCodeGenerator/issues">留言</a>给我分析，谢谢！

        </p>
        <div class="input-group mb-3">
            <div class="input-group-prepend">
                <span class="input-group-text">作者名称</span>
            </div>
            <input type="text" class="form-control" id="authorName" placeholder="大狼狗">
            <div class="input-group-prepend">
                <span class="input-group-text">包名路径</span>
            </div>
            <input type="text" class="form-control" id="packageName" placeholder="com.softdev.system">
        </div>
        <textarea id="ddlSqlArea" placeholder="请输入表结构信息..." class="form-control" style="height: 250px;">
CREATE TABLE `userinfo` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `username` varchar(255) NOT NULL COMMENT '用户名',
  `addtime` datetime NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户信息'
        </textarea><br>
        <p><button class="btn btn-primary btn-lg" id="btnGenCode" role="button">开始生成 »</button></p>
        <hr>
        <!-- Example row of columns -->
        <div class="btn-toolbar mb-3" role="toolbar" aria-label="Toolbar with button groups">
            <div class="input-group">
                <div class="input-group-prepend">
                    <div class="input-group-text" id="btnGroupAddon">jdbcTemplate</div>
                </div>
            </div>
            <div class="btn-group mr-2" role="group" aria-label="First group">
                <button type="button" class="btn btn-default" id="jtdaoimpl">daoimpl</button>
                <button type="button" class="btn btn-default" id="jtdao">dao</button>
            </div>
        </div>
        <div class="btn-toolbar mb-3" role="toolbar" aria-label="Toolbar with button groups">
            <div class="input-group">
                <div class="input-group-prepend">
                    <div class="input-group-text" id="btnGroupAddon">JPA</div>
                </div>
            </div>
            <div class="btn-group mr-2" role="group" aria-label="First group">
                <button type="button" class="btn btn-default" id="swaggerui">swaggerui</button>
                <button type="button" class="btn btn-default" id="entity">entity</button>
                <button type="button" class="btn btn-default" id="repository">repository</button>
                <button type="button" class="btn btn-default" id="jpacontroller">jpacontroller</button>
            </div>
        </div>
        <div class="btn-toolbar mb-3" role="toolbar" aria-label="Toolbar with button groups">
            <div class="input-group">
                <div class="input-group-prepend">
                    <div class="input-group-text" id="btnGroupAddon">Mybatis</div>
                </div>
            </div>
            <div class="btn-group mr-2" role="group" aria-label="First group">
                <button type="button" class="btn btn-default" id="model">model</button>
                <button type="button" class="btn btn-default" id="mybatis">mybatis</button>
                <button type="button" class="btn btn-default" id="dao">dao</button>
                <button type="button" class="btn btn-default" id="service">service</button>
                <button type="button" class="btn btn-default" id="service_impl">service_impl</button>
                <button type="button" class="btn btn-default" id="controller">controller</button>
            </div>
        </div>
        <hr>
        <textarea id="genCodeArea" class="form-control" ></textarea>
    </div>
</div>

<div class="container">

    <hr>
    <footer>
        <footer class="bd-footer text-muted" role="contentinfo">
            <div class="container">
               <strong>Copyright &copy; 2018-${.now?string('yyyy')} &nbsp;
                   <p><a href="https://github.com/moshowgame/SpringBootCodeGenerator">SpringBootCodeGenerator</a>由<a href="https://blog.csdn.net/moshowgame" target="_blank">@Moshow/大狼狗/郑锴</a> 开发维护. 由 <a href="https://www.bejson.com">BeJson三叔 </a> 提供在线版本。</p>
            </div>
        </footer>
    </footer>
</div> <!-- /container -->


</body>
</html>
