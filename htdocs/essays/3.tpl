<p>Node.js是一门用javascript编写服务端应用的语言，具有非阻塞、高I/O的优点。相信很多前端开发工程看到这个描述就跃跃欲试了。终于有机会跟后台开发一争天下，推翻程序员鄙视链理论指日可待啊(c>c++>java/.net>前端)。</p>
<p>然而事实上，Node.js已经走过了10年了，并没有在服务端应用方面掀起太大的波浪，反倒是在包管理，工具化方面应用更为广泛，如npm仓库、webpack等。因此除非你们团队本来的后台技术栈就是Node.js，不然要想在服务端说服公司使用Node.js还是需要费些心力的。</p>
<p>笔者所在公司使用Node.js已经有两年多，从一开始使用Node.js替代Jsp做前后端分离，到使用Node.js承担公司部分创新性项目积累了一定的经验。接下来，本文将描述说服使用Node.js面临的难题？如何找准立足点并让领导接受使用Node.js？大家有什么意见和想法欢迎留言讨论。</p>
<h3>为什么想用Node.js做服务那么难</h3>
<p>在大部分的公司，后台服务基本是由java、c++等语言把持。因此想用Node.js去做服务面临着各种困难，主要原因如下：</p>
<h4>1. 成熟的后台体系</h4>
<p>以java为例，经过长时间的发展和线上验证，java的生态相当完善。在当下微服务体系大行其道的背景下，各种微服务解决方案就像是为java而生的一样，例如使用Spring Cloud体系，你能搭建出一整套的解决方案。而Node.js在这块还属于初级阶段。幸运的是，这类解决方案基本提供了标准的接入方案，Node.js等非java体系语言也能接入。然而接入门槛较高，如java的接入提供了相关sdk，只需要编写相关的配置文件即可，Node.js是需要自己编写代码实现的。</p>
<p>另外，小公司为了降低运营和维护成本，一般只接受一种后台语言，java体系下，问题的排查和解决比较容易找到资深的工程师解决。</p>
<h4>2. 前端人员的相关技术素养的缺乏</h4>
<p>后台开发对算法、数据接口、设计模式、逻辑分析等能力的要求较高，较为严谨。而传统意义上的前端开发，只需对用户负责就可以了，相信大家也听过Don't let me think这句话。前端面向用户体验负责，偏向于感性。做好这一点，也能成为一名优秀的前端开发工程师。但是如果想让Node.js在服务端有所应用，相关技术能力是需要补足的，所幸向周围的大牛学习和多逛技术论坛可以弥补这点。</p>
<h4>3. 大环境下对于JavaScript和前端的刻板印象</h4>
<p>"毕竟前端的入门门槛比较低"相信这句话作为前端的同学应该都有所有耳闻。并且JavaScript是一门弱类型语言，在后端使用不严谨（可以使用Typescript替代）。改变刻板印象是一个长期的过程。这里也感谢国内大厂，线上环境对于Node.js的大规模使用，正改变着人们过往的印象。</p>
<h4>4. Node.js生态的不确定性。</h4>
<p>这个主要是因为两个方面的原因：</p>
<ol>
    <li>node.js的作者又弄了个新的deno，打击了大家使用Node.js的信心;</li>
    <li>npm包虽然数量庞大，但安全性未经认证。</li>
</ol>
<p>总之，使用Node.js做服务端开发语言，需要有强大的决心。但是决心是不够的，我们使用一门新的技术，需要找准立足点。</p>
<h3>立足点——为什么我要用Node.js</h3>
<p>当我们终于鼓起勇气，向领导安利Node.js的时候，我们总不能说，“你看，某某厂也在用”吧。凡事预则立不预则废。我们得找准立足点，让领导明白这个只有前端的同事能做，或者做的更好。我觉得可以从以下几个方面进行论述。</p>
<h4>1. 一切为了用户——提升用户体验</h4>
<p>前端开发理应为用户体验负责。</p>
<p>曾几何时，前后端开发的分界并没有那么明显，大部分的前端页面由后台人员兼着做，一套JQuery+BootStrap便可走天下，例如J2EE、PHP、ASP.NET等。但随着前端框架的出现（Angular、React、Vue），其复杂程度和上手难度已经不是后台能开箱即用的了。慢慢的，现在的后台人员“不懂”前端，关于体验前端更有发言权。</p>
<p>同时，复杂的前端框架也让首屏时间越来越长，白屏也将导致用户流失，需要我们做优化，常见的手段有如SSR,PWA。而这些如果不借助与Node.js的能力，是很难实现的。</p>
<h4>2. 职责明确——提高开发团队生产力</h4>
<p><img src="temp/16b53c8ba198cd45" /></p>
<p>服务端设计的接口应面向通用服务，趋向稳定，后端团队理应关注于服务本身，并尽量少的关注于UI。一套接口，多端适用。</p>
<p>面向UI的接口应交给BFF(Backends For Frontends)，实现数据聚合、裁剪和格式化。秉着服务自治（谁使用，谁负责、谁开发）的原则，这一层应该交由前端团队负责。</p>
<h4>3. 团队赋能——提高前端团队的想象和成长空间</h4>
<p>前端是一个需要不断学习，不断充电的领域，各种新的技术在不断涌现并成为主流，如PWA、GraphQL、SSR等，需要我们去尝试。Node.js的使用能让团队在让这些技术落地，提高团队活力和技术水平。一个有想象空间的团队，所能创造的东西的是不一样的。</p>
<h3>如何让领导信任你能Hold住Node.js</h3>
<h4>1. 树立专业形象</h4>
<p>树立专业形象主要为了达到跟领导建立信任感，让领导知道你是能把一件事情做好的人，即首先让领导信任你这个人或者团队。这个需要在平时多跟领导交流，表现出个人素养。我认为主要分为两个方面：</p>
<ol>
    <li>责任心强、解决问题能力强、遇事能钻研。如果之前打过硬仗将会是很好的佐证材料。</li>
    <li>技术能力优秀。平时除了将本身的工作做好之外，应该在网络、安全、代码架构等后端方面有相关表现，平时多逛论坛、内部/朋友圈分享、写技术文章会是很好的证明。</li>
</ol>
<h4>2. 他山之石，可以攻玉</h4>
<p>以开放和包容的态度对待技术。 在后台的大牛面前，Node.js能做的内容还是小打小闹，他们在各方面都有成熟的方案。例如在全链路监控、系统性能度量、算法、数据库等等方面，因此多跟后台人员讨教，兼听则明。</p>
<h4>3. 以数据，文档说话</h4>
<p>Node.js的性能如何，能否顶得住现有压力，不是靠我们几句话就能描述清楚的，一份压测报告才是最好的证明。如果是改造原有系统，有个直观的数据数据比较会更好，我们使用Node.js改造JSP站点的时候，渲染同个页面压测出来的数据是有10倍＋性能的提升的。</p>
<p>好的技术设计文档利于大家了解你的架构和后续做扩展。因此一份长期维护的文档也是很重要的。如何写一份好的文档，推荐大家看这边文章What nobody tells you about documentation(https%3A%2F%2Fwww.divio.com%2Fblog%2Fdocumentation%2F)</p>
<h3>其他</h3>
<p>以下是本人关于Node.js未来发展的一些观点，仅供参考：</p>
<ol>
    <li>service mesh的规模化使用之后，使用任何语言都能开发微服务，而不需要关心如何搭建微服务体系本身。对于使用Node.js是一种利好；</li>
    <li>现有运维体系已经相当成熟，借助k8s+Prometheus即可做好node.js运行时监控，线上监控趋向简单；</li>
    <li>"天下大势合久必分"，Node.js站稳之后，应该会成为独立岗位，专注于服务端。</li>
</ol>
<p>一些有用的资料</p>
<ul>
    <li>淘宝前后端分离实践：http%3A%2F%2F2014.jsconf.cn%2Fslides%2Fherman-taobaoweb%2Findex.html</li>
    <li>生产环境下的Node.js——开源监控工具：https://juejin.im/post/5cf4f8bd6fb9a07ef562210c</li>
    <li>2018前端总结 和2019 前端流行趋势预测都在这！：https%3A%2F%2Fwww.jianshu.com%2Fp%2F8dde6de41641</li>
    <li>docsify-文档网站生成工具：https%3A%2F%2Fdocsify.js.org%2F%23%2F</li>
</ul>