use v5.10;
use strict;
use warnings;
use Plack::Request;

my $icon = "/usr/share/notify-osd/icons/gnome/scalable/status/notification-message-im.svg";

sub _notify {
  my $content = shift;
  my ($summary, $body) = split "\n", $content, 2;
  $summary //= "IRC";
  $body //= "";
  system("/usr/bin/notify-send", "-i", $icon, $summary, $body);
}

my $app = sub {
  my $req = Plack::Request->new(shift);
  _notify($req->raw_body);
  my $res = $req->new_response(200);
  return $res->finalize;
};
