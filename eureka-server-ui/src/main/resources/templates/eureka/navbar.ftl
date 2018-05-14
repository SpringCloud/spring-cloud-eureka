<h1>纯公益-Eureka Server!</h1>
<div class="row">
    <div class="col-md-6">
        <div style="margin-left: 30px;margin-top: 20px;">
            <h3>公益-Eureka Server注册中心</h3>
            <p>
                在Spring Cloud应用的配置文件中，设置Eureka Server的地址为：
                <span style="font-weight: bold;">eureka.client.serviceUrl.defaultZone=http://eureka.springcloud.cn/eureka/</span>
            </p>
            <br>
            <h3>注意事项</h3>
            <div style="color:red;">
                <li>本Eureka Server为公益注册中心，仅作为帮助Spring Cloud的开发者进行学习和调试</li>
                <li>为了更好服务大家，请勿对本注册中心进行压测</li>
            </div>
        </div>
    </div>
    <div class="col-md-6">
        <h3>关于我们</h3>
        <div>
            <p>在学习与使用过程中遇到困难，就来<a href="http://springcloud.cn" target="_blank">Spring Cloud中国社区</a>与我们一起探讨交流吧。</p>
            <br>
            <li>Spring Cloud中国社区(http://springcloud.cn),我们致力于成为中国最专业最权威Spring Boot和Spring Cloud交流社区!</li>
            <li>【Spring Cloud中国QQ群①:415028731(已满）】</li>
            <li>【Spring Cloud中国QQ群②:530321604(已满）】</li>
            <li>【Spring Cloud中国QQ群③:643970587(未满）】</li>
            <li>【Spring Cloud中国QQ群④:643970587(未满）】</li>
            <li>加微信Software_King，可以拉入Spring Cloud中国社区微信群</li>
        </div>
    </div>
</div>

<h1>System Status</h1>
<div class="row">
  <div class="col-md-6">
    <table id='instances' class="table table-condensed table-striped table-hover">
      <#if amazonInfo??>
        <tr>
          <td>EUREKA SERVER</td>
          <td>AMI: ${amiId!}</td>
        </tr>
        <tr>
          <td>Zone</td>
          <td>${availabilityZone!}</td>
        </tr>
        <tr>
          <td>instance-id</td>
          <td>${instanceId!}</td>
        </tr>
      </#if>
      <tr>
        <td>Environment</td>
        <td>${environment!}</td>
      </tr>
      <tr>
        <td>Data center</td>
        <td>${datacenter!}</td>
      </tr>
    </table>
  </div>
  <div class="col-md-6">
    <table id='instances' class="table table-condensed table-striped table-hover">
      <tr>
        <td>Current time</td>
        <td>${currentTime}</td>
      </tr>
      <tr>
        <td>Uptime</td>
        <td>${upTime}</td>
      </tr>
      <tr>
        <td>Lease expiration enabled</td>
        <td>${registry.leaseExpirationEnabled?c}</td>
      </tr>
      <tr>
        <td>Renews threshold</td>
        <td>${registry.numOfRenewsPerMinThreshold}</td>
      </tr>
      <tr>
        <td>Renews (last min)</td>
        <td>${registry.numOfRenewsInLastMin}</td>
      </tr>
    </table>
  </div>
</div>

<#--<#if isBelowRenewThresold>-->
    <#--<#if !registry.selfPreservationModeEnabled>-->
        <#--<h4 id="uptime"><font size="+1" color="red"><b>RENEWALS ARE LESSER THAN THE THRESHOLD. THE SELF PRESERVATION MODE IS TURNED OFF.THIS MAY NOT PROTECT INSTANCE EXPIRY IN CASE OF NETWORK/OTHER PROBLEMS.</b></font></h4>-->
    <#--<#else>-->
        <#--<h4 id="uptime"><font size="+1" color="red"><b>EMERGENCY! EUREKA MAY BE INCORRECTLY CLAIMING INSTANCES ARE UP WHEN THEY'RE NOT. RENEWALS ARE LESSER THAN THRESHOLD AND HENCE THE INSTANCES ARE NOT BEING EXPIRED JUST TO BE SAFE.</b></font></h4>-->
    <#--</#if>-->
<#--<#elseif !registry.selfPreservationModeEnabled>-->
    <#--<h4 id="uptime"><font size="+1" color="red"><b>THE SELF PRESERVATION MODE IS TURNED OFF.THIS MAY NOT PROTECT INSTANCE EXPIRY IN CASE OF NETWORK/OTHER PROBLEMS.</b></font></h4>-->
<#--</#if>-->

<h1>DS Replicas</h1>
<ul class="list-group">
  <#list replicas as replica>
    <li class="list-group-item"><a href="${replica.value}">${replica.key}</a></li>
  </#list>
</ul>

