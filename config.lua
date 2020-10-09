RulePath = "/usr/local/nginx/waf/wafconf/"
attacklog = "on"
--args post  url  user-agent..日志文件开关
logtofile = "on"
--ccdeny or hackipdeny日志记录开关-
denycclog="on"
--日志路径
logdir = "/home/wwwlogs/waf/"
UrlDeny="on"
Redirect="on"
CookieMatch="on"
postMatch="on" 
whiteModule="on" 
black_fileExt={"php","jsp"}
ipWhitelist={"139.159.194.220","127.0.0.1","119.8.104.73","159.138.40.51","159.138.40.162","159.138.10.120","119.8.103.214","159.138.32.40","159.138.40.64","159.138.48.77"}
ipBlocklist={"1.0.0.1"}
--hackrate超过10次/1800秒,限制访问86400秒。
hackipdeny="on"
hackrate="10/1800/7200"
--cc攻击防范 新增屏蔽周期  60秒内,请求同一url累计超过40次,封锁ip 3600 秒
CCDeny="on"
CCrate="40/60/7200"
---cc策略次数是否纳入hackip,纳入则cc策略会封锁ip,cc加强版
cclinkhack="on"
--1.加强cc防护,原生效果太差,用一条url触发成功拦截，并计入恶意请求次数2.更换正则模块目前用find，压测效果匹配速度是原来的3-4倍,3.新增cc拦截日志.4.新增恶意请求ip的拦截。新增args post  url  user-agent的策略
