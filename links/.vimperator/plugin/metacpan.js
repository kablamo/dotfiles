var PLUGIN_INFO =
<VimperatorPlugin>
<name>{NAME}</name>
<description>MetaCPAN search</description>
<description lang="en">MetaCPAN</description>
<author mail="vimperator.metacpan@iijo.nospamthanks.org" homepage="http://iijo.org">Eric Johnson</author>
<license>Perl</license>
<version>0.1</version>
</VimperatorPlugin>;

(function() {
var p = function(arg) {
    Application.console.log(arg);
    // liberator.log(arg);
};

// preload CPAN list
var cpanListURL = liberator.globalVariables.cpanSearchListURL || 'http://cpan.ma.la/list';
if (!liberator.globalVariables.cpanListCache) {
    let xhr = new XMLHttpRequest();
    xhr.onreadystatechange = function() {
        if (xhr.readyState == 4) {
            if (xhr.status == 200) {
                liberator.globalVariables.cpanListCache =
                    xhr.responseText.split(/\r\n|[\r\n]/).map(function(i) [i, '', i.toUpperCase()]);
            } else {
                liberator.echoerr('CPAN search: XHR Error: ' + xhr.statusText);
                // throw new Error(xhr.statusText);
            }
        }
    };
    xhr.open('GET', cpanListURL, true);
    xhr.send(null);
}

commands.addUserCommand(
    ['cpan'],
    'CPAN Search',
    function(args) {
        var name = (args.string || '').replace(/^\^|\s+/g, '');
        var url = 'http://metacpan.org/search?q=' + name;
        liberator.open(url, args.bang ? liberator.NEW_TAB : null);
    }, {
        completer: function(context) {
            context.title = ['MODULE NAME', ''];
            var word = context.filter.toUpperCase();
            if (word.indexOf(':') >= 0) {
                let regex = word.split(/:+/).map(function(i) i + '[^:]*').join('::');
                regex = new RegExp('^' + regex.replace(/\[\^:\]\*$/, ''));
                context.filters = [function(item) regex.test(item.item[2])];
            } else {
                context.filters = [function(item) item.item[2].indexOf(word) != -1];
            }
            context.completions = liberator.globalVariables.cpanListCache || [];
        },
        argCount: '1',
        bang: true
    },
    true
);

})();

