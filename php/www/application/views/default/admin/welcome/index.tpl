{extends file="mainlayout.tpl"}
{block name=javascript}
    <script type="text/javascript" src="{site_url('welcome/navs')}"></script>
    {js('js/index.js')}
{/block}
{block name=body}
    <div class="layui-layout layui-layout-admin">
        <div class="layui-header header header-demo">
            <div class="layui-main">
                <div class="admin-login-box">
                    <a class="logo" style="left: 0;" href="http://www.fanxinmsg.com">
                        <span style="font-size: 22px;">
                            {image('images/login.png')}
                        </span>
                    </a>
                    <div class="admin-side-toggle">
                        <i class="fa fa-bars" aria-hidden="true"></i>
                    </div>
                </div>
                <ul class="layui-nav admin-header-item">
                    <li class="layui-nav-item">
                        <a href="{site_url('plugin/index')}" data-tab="true" data-icon="fa-cubes">
                            <i class="fa fa-cubes" aria-hidden="true"></i>
                            <cite>应用中心</cite>
                        </a>
                    </li>
                    <li class="layui-nav-item">
                        <a href="javascript:;" class="admin-header-user">
                            {image('images/0.jpg')}
                            <span>{if !empty($user.username)}{$user.username}{else}{$user.email}{/if}</span>
                        </a>
                        <dl class="layui-nav-child">
                            {if !$user['region']}
                            <dd>
                                <a href="{site_url('auth/index')}" data-tab="true"><i class="fa fa-users" aria-hidden="true"></i> <cite>管理账号</cite></a>
                            </dd>
                            {/if}
                            <dd>
                                <a href="{site_url('auth/logout')}"><i class="fa fa-sign-out" aria-hidden="true"></i> 注销</a>
                            </dd>
                        </dl>
                    </li>
                </ul>
                <ul class="layui-nav admin-header-item-mobile">
                    <li class="layui-nav-item">
                        <a href="{site_url('auth/logout')}"><i class="fa fa-sign-out" aria-hidden="true"></i> 注销</a>
                    </li>
                </ul>
            </div>
        </div>
        <div class="layui-side layui-bg-black" id="admin-side">
            <div class="layui-side-scroll" id="admin-navbar-side" lay-filter="side"></div>
        </div>
        <div class="layui-body" style="bottom: 0;border-left: solid 2px #1AA094;" id="admin-body">
            <div class="layui-tab admin-nav-card layui-tab-brief" lay-filter="admin-tab">
                <ul class="layui-tab-title" >
                    <li class="layui-this">
                        <i class="fa fa-dashboard" aria-hidden="true"></i>
                        <cite>控制面板</cite>
                    </li>
                </ul>
                <div class="layui-tab-content" style="min-height: 150px; padding: 5px 0 0 0;">
                    <div class="layui-tab-item layui-show">
                        <iframe src="{site_url('welcome/main')}"></iframe>
                    </div>
                </div>
            </div>
        </div>
        <div class="layui-footer footer footer-demo" id="admin-footer">
            <div class="layui-main">
                <p>{date('Y')} &copy;
                   合肥掌峰科技有限公司
                </p>
            </div>
        </div>
        <div class="site-tree-mobile layui-hide">
            <i class="layui-icon">&#xe602;</i>
        </div>
        <div class="site-mobile-shade"></div>

        <!--锁屏模板 start-->
        <script type="text/html" id="lock-temp">
            <div class="admin-header-lock" id="lock-box">
                <div class="admin-header-lock-img">
                    {image('images/0.jpg')}
                </div>
                <div class="admin-header-lock-name" id="lockUserName">beginner</div>
                <input type="text" class="admin-header-lock-input" value="输入密码解锁.." name="lockPwd" id="lockPwd" />
                <button class="layui-btn layui-btn-small" id="unlock">解锁</button>
            </div>
        </script>
        <!--锁屏模板 end -->
    </div>
{/block}