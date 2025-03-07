from python import Python


fn main() raises:
    var requests = Python.import_module("requests")
    var response = requests.get("https://www.google.com/")
    print(response.status_code)  # => 200
    print(response.text)

    # =>
    # <!doctype html><html itemscope="" itemtype="http://schema.org/WebPage" lang="pl"><head><meta content="text/html; charset=UTF-8" http-equiv="Content-Type"><meta content="/images/branding/googleg/1x/googleg_standard_color_128dp.png" itemprop="image"><title>Google</title><script nonce="Q3YI0j4WofjYsjWrfyFg_w">(function(){var _g={kEI:'UGZkZvDyFfqHxc8PjvetuA8',kEXPI:'0,3700254,695,361,67,12,541528,2891,3926,7828,77401,230,107257,6621,49751,2,39761,6699,41946,64701,3998,12870,10960,23350,22436,9779,42459,20198,73179,3030,15816,1804,26407,8586,275,2414,9400,1632,13496,5254651,890,623,37,5991771,2839987,256,100,1,1,1,10,57,27998394,43887,3,318,4,1281,3,2124363,23029351,12799,8409,10754,148,5762,28027,36870,1923,10958,4832,1575,2960,10886,15164,2576,5392,214,149,241,5551,39227,1264,13082,11584,4801,1953,156,399,2084,1710,2691,5226,3877,1006,6731,7,5265,3,1324,1036,1503,78,662,2,1,226,539,1641,1450,207,121,2649,568,5,126,2878,1117,2265,896,1,3898,5690,3,423,43,3,1252,2946,673,873,518,755,135,1902,1,6,1609,3,88,2890,1493,151,48,3845,97,23,663,929,4308,447,990,1122,3,52,22,1673,24,73,83,422,35,518,113,4221,209,1021,291,3,1417,3,5,260,3,131,1501,1299,410,254,1375,853,516,641,616,148,329,1821,975,50,689,669,1,670,20,3113,1112,4,1094,843,1007,2013,1550,104,279,935,146,320,28,1,1140,22,724,743,436,920,1536,200,832,216,113,478,3,612,660,817,100,2129,249,39,243,6,282,92,831,298,1529,5,3,22,261,1,9,155,3,1046,9,128,4,1,6,508,160,305,332,80,864,179,180,1,3,303,246,641,247,337,9,23,110,183,565,30,70,111,79,138,27,11,79,1,3,1,795,477,2,147,17,1129,8,379,415,772,14,223,494,1,1028,208,1500,71,418,211,1,1,982,21209574,361372,4264,3,5247,4949,4,3968,1994,1653,322,1581,438,920,3389795',kBL:'VNYr',kOPI:89978449};(function(){var a;(null==(a=window.google)?0:a.stvsc)?google.kEI=_g.kEI:window.google=_g;}).call(this);})();(function(){google.sn='webhp';google.kHL='pl';})();(function(){
    # var h=this||self;function l(){return void 0!==window.google&&void 0!==window.google.kOPI&&0!==window.google.kOPI?window.google.kOPI:null};var m,n=[];function p(a){for(var b;a&&(!a.getAttribute||!(b=a.getAttribute("eid")));)a=a.parentNode;return b||m}function q(a){for(var b=null;a&&(!a.getAttribute||!(b=a.getAttribute("leid")));)a=a.parentNode;return b}function r(a){/^http:/i.test(a)&&"https:"===window.location.protocol&&(google.ml&&google.ml(Error("a"),!1,{src:a,glmm:1}),a="");return a}
    # function t(a,b,c,d,k){var e="";-1===b.search("&ei=")&&(e="&ei="+p(d),-1===b.search("&lei=")&&(d=q(d))&&(e+="&lei="+d));d="";var g=-1===b.search("&cshid=")&&"slh"!==a,f=[];f.push(["zx",Date.now().toString()]);h._cshid&&g&&f.push(["cshid",h._cshid]);c=c();null!=c&&f.push(["opi",c.toString()]);for(c=0;c<f.length;c++){if(0===c||0<c)d+="&";d+=f[c][0]+"="+f[c][1]}return"/"+(k||"gen_204")+"?atyp=i&ct="+String(a)+"&cad="+(b+e+d)};m=google.kEI;google.getEI=p;google.getLEI=q;google.ml=function(){return null};google.log=function(a,b,c,d,k,e){e=void 0===e?l:e;c||(c=t(a,b,e,d,k));if(c=r(c)){a=new Image;var g=n.length;n[g]=a;a.onerror=a.onload=a.onabort=function(){delete n[g]};a.src=c}};google.logUrl=function(a,b){b=void 0===b?l:b;return t("",a,b)};}).call(this);(function(){google.y={};google.sy=[];google.x=function(a,b){if(a)var c=a.id;else{do c=Math.random();while(google.y[c])}google.y[c]=[a,b];return!1};google.sx=function(a){google.sy.push(a)};google.lm=[];google.plm=function(a){google.lm.push.apply(google.lm,a)};google.lq=[];google.load=function(a,b,c){google.lq.push([[a],b,c])};google.loadAll=function(a,b){google.lq.push([a,b])};google.bx=!1;google.lx=function(){};var d=[];google.fce=function(a,b,c,e){d.push([a,b,c,e])};google.qce=d;}).call(this);google.f={};(function(){
    # document.documentElement.addEventListener("submit",function(b){var a;if(a=b.target){var c=a.getAttribute("data-submitfalse");a="1"===c||"q"===c&&!a.elements.q.value?!0:!1}else a=!1;a&&(b.preventDefault(),b.stopPropagation())},!0);document.documentElement.addEventListener("click",function(b){var a;a:{for(a=b.target;a&&a!==document.documentElement;a=a.parentElement)if("A"===a.tagName){a="1"===a.getAttribute("data-nohref");break a}a=!1}a&&b.preventDefault()},!0);}).call(this);</script><style>#gbar,#guser{font-size:13px;padding-top:1px...

    response = requests.get("https://api.github.com")
    print(response.json())


# =>
# {'current_user_url': 'https://api.github.com/user', 'current_user_authorizations_html_url':
# 'https://github.com/settings/connections/applications{/client_id}', 'authorizations_url':
# 'https://api.github.com/authorizations', 'code_search_url':
# 'https://api.github.com/search/code?q={query}{&page,per_page,sort,order}', 'commit_search_url':
# 'https://api.github.co...
