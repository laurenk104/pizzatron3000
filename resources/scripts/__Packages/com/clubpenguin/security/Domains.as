class com.clubpenguin.security.Domains
{
   function Domains()
   {
   }
   static function getAllowedDomains()
   {
      if(com.clubpenguin.security.Domains.allowedDomains == undefined)
      {
         com.clubpenguin.security.Domains.initialiseDomainList();
      }
      return com.clubpenguin.security.Domains.allowedDomains;
   }
   static function initialiseDomainList()
   {
      if(com.clubpenguin.util.Reporting.DEBUG_SECURITY)
      {
         com.clubpenguin.util.Reporting.debugTrace("(Domains) initialising allowed domain list",com.clubpenguin.util.Reporting.DEBUGLEVEL_MESSAGE);
      }
      com.clubpenguin.security.Domains.allowedDomains = new Array();
      com.clubpenguin.security.Domains.allowedDomains.push("play.clubpenguin.com");
      com.clubpenguin.security.Domains.allowedDomains.push("play2.clubpenguin.com");
      com.clubpenguin.security.Domains.allowedDomains.push("media.clubpenguin.com");
      com.clubpenguin.security.Domains.allowedDomains.push("media1.clubpenguin.com");
      com.clubpenguin.security.Domains.allowedDomains.push("media2.clubpenguin.com");
      com.clubpenguin.security.Domains.allowedDomains.push("cdn.clubpenguin.com");
      com.clubpenguin.security.Domains.allowedDomains.push("play.critteroo.com");
      com.clubpenguin.security.Domains.allowedDomains.push("play2.critteroo.com");
      com.clubpenguin.security.Domains.allowedDomains.push("media.critteroo.com");
      com.clubpenguin.security.Domains.allowedDomains.push("media1.critteroo.com");
      com.clubpenguin.security.Domains.allowedDomains.push("media2.critteroo.com");
      com.clubpenguin.security.Domains.allowedDomains.push("cdn.critteroo.com");
      com.clubpenguin.security.Domains.allowedDomains.push("play.clubpenguin.co.uk");
      com.clubpenguin.security.Domains.allowedDomains.push("play2.clubpenguin.co.uk");
      com.clubpenguin.security.Domains.allowedDomains.push("media.clubpenguin.co.uk");
      com.clubpenguin.security.Domains.allowedDomains.push("media1.clubpenguin.co.uk");
      com.clubpenguin.security.Domains.allowedDomains.push("media2.clubpenguin.co.uk");
      com.clubpenguin.security.Domains.allowedDomains.push("cdn.clubpenguin.co.uk");
      com.clubpenguin.security.Domains.allowedDomains.push("play.critteroo.co.uk");
      com.clubpenguin.security.Domains.allowedDomains.push("play2.critteroo.co.uk");
      com.clubpenguin.security.Domains.allowedDomains.push("media.critteroo.co.uk");
      com.clubpenguin.security.Domains.allowedDomains.push("media1.critteroo.co.uk");
      com.clubpenguin.security.Domains.allowedDomains.push("media2.critteroo.co.uk");
      com.clubpenguin.security.Domains.allowedDomains.push("cdn.critteroo.co.uk");
      com.clubpenguin.security.Domains.allowedDomains.push("sandbox01.play.clubpenguin.com");
      com.clubpenguin.security.Domains.allowedDomains.push("sandbox01.play2.clubpenguin.com");
      com.clubpenguin.security.Domains.allowedDomains.push("sandbox01.media.clubpenguin.com");
      com.clubpenguin.security.Domains.allowedDomains.push("sandbox01.media1.clubpenguin.com");
      com.clubpenguin.security.Domains.allowedDomains.push("sandbox01.media2.clubpenguin.com");
      com.clubpenguin.security.Domains.allowedDomains.push("sandbox01.cdn.clubpenguin.com");
      com.clubpenguin.security.Domains.allowedDomains.push("sandbox02.play.clubpenguin.com");
      com.clubpenguin.security.Domains.allowedDomains.push("sandbox02.play2.clubpenguin.com");
      com.clubpenguin.security.Domains.allowedDomains.push("sandbox02.media.clubpenguin.com");
      com.clubpenguin.security.Domains.allowedDomains.push("sandbox02.media1.clubpenguin.com");
      com.clubpenguin.security.Domains.allowedDomains.push("sandbox02.media2.clubpenguin.com");
      com.clubpenguin.security.Domains.allowedDomains.push("sandbox02.cdn.clubpenguin.com");
      com.clubpenguin.security.Domains.allowedDomains.push("sandbox03.play.clubpenguin.com");
      com.clubpenguin.security.Domains.allowedDomains.push("sandbox03.play2.clubpenguin.com");
      com.clubpenguin.security.Domains.allowedDomains.push("sandbox03.media.clubpenguin.com");
      com.clubpenguin.security.Domains.allowedDomains.push("sandbox03.media1.clubpenguin.com");
      com.clubpenguin.security.Domains.allowedDomains.push("sandbox03.media2.clubpenguin.com");
      com.clubpenguin.security.Domains.allowedDomains.push("sandbox03.cdn.clubpenguin.com");
      com.clubpenguin.security.Domains.allowedDomains.push("sandbox04.play.clubpenguin.com");
      com.clubpenguin.security.Domains.allowedDomains.push("sandbox04.play2.clubpenguin.com");
      com.clubpenguin.security.Domains.allowedDomains.push("sandbox04.media.clubpenguin.com");
      com.clubpenguin.security.Domains.allowedDomains.push("sandbox04.media1.clubpenguin.com");
      com.clubpenguin.security.Domains.allowedDomains.push("sandbox04.media2.clubpenguin.com");
      com.clubpenguin.security.Domains.allowedDomains.push("sandbox04.cdn.clubpenguin.com");
      com.clubpenguin.security.Domains.allowedDomains.push("sandbox05.play.clubpenguin.com");
      com.clubpenguin.security.Domains.allowedDomains.push("sandbox05.play2.clubpenguin.com");
      com.clubpenguin.security.Domains.allowedDomains.push("sandbox05.media.clubpenguin.com");
      com.clubpenguin.security.Domains.allowedDomains.push("sandbox05.media1.clubpenguin.com");
      com.clubpenguin.security.Domains.allowedDomains.push("sandbox05.media2.clubpenguin.com");
      com.clubpenguin.security.Domains.allowedDomains.push("sandbox05.cdn.clubpenguin.com");
      com.clubpenguin.security.Domains.allowedDomains.push("kel-dev-clp-ib02.sandbox.play.clubpenguin.com");
      com.clubpenguin.security.Domains.allowedDomains.push("*.online.disney.com");
   }
}
