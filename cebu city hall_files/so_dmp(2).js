(function(w, D, S, d, t, i) {
  d = w[D];

  var params = (function() {
    var tags = d.getElementsByTagName(S);
    for (var i = 0; i < tags.length; ++i) {
      var tag = tags[i], obj = {},
          src = (tag.getAttribute ? tag.getAttribute('src') : tag.src) || "",
          re  = src.match(/\/s\/so_dmp.js(?:\?(.*))?$/);
      if (re && re[1]) {
        var tokens = re[1].split('?');
        for (var ii = 0; ii < tokens.length; ++ii) {
          var kv = tokens[ii].split('=');
          obj[kv[0]] = kv[1];
        }
        return obj;
      }
    }
    return {};
  })();

  var id = params['service_id'];
  id = id ? '&service_id=' + id : "";

  t = '<img src=\\\'//tg.socdm.com/aux/collect?t=gif&tp=' + encodeURIComponent(d.location.href) +
    '&pp=' + encodeURIComponent(d.referrer) + id +
    '\\\' width=\\\'1\\\' height=\\\'1\\\' style=\\\'position:absolute;border:none;padding:0;margin:0;\\\' />';

  i = d.createElement('iframe');
  (i.frameElement || i).style.cssText = 'width:0;height:0;border:0;display:none;visibility:hidden';
  i.src = 'java'+S+':void(0)';

  d.getElementsByTagName('body')[0].appendChild(i);
  d = i.contentWindow[D];
  d.open('text/html','replace');
  d.write('<body onload="setTimeout(function(){'+D+'.open(\'text/html\',\'replace\').write(\'<body>'+t+'</body>\');'+D+'.close()},0)">');
  d.close();
})(window, 'document', 'scr'+'ipt');
