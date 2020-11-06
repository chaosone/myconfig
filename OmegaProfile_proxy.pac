var FindProxyForURL = function(init, profiles) {
    return function(url, host) {
        "use strict";
        var result = init, scheme = url.substr(0, url.indexOf(":"));
        do {
            result = profiles[result];
            if (typeof result === "function") result = result(url, host, scheme);
        } while (typeof result !== "string" || result.charCodeAt(0) === 43);
        return result;
    };
}("+proxy", {
    "+proxy": function(url, host, scheme) {
        "use strict";
        if (/^127\.0\.0\.1$/.test(host) || /^::1$/.test(host) || /^localhost$/.test(host)) return "DIRECT";
        switch (scheme) {
          case "http":
            return "SOCKS5 127.0.0.1:1080; SOCKS 127.0.0.1:1080";

          case "https":
            return "SOCKS5 127.0.0.1:1080; SOCKS 127.0.0.1:1080";

          default:
            return "SOCKS5 127.0.0.1:1080; SOCKS 127.0.0.1:1080";
        }
    }
});